create extension if not exists "uuid-ossp";
 
create type perfil_usuario as enum ('aluno', 'administrador escolar', 'administrador global');
create type estado_sessao as enum ('em andamento', 'concluida');
 
create table if not exists autenticacoes (
  id UUID primary key default uuid_generate_v4(),
  hash_senha text not null
);
 
create table if not exists usuarios (
  id UUID primary key references autenticacoes(id) on delete cascade,
  nome varchar(50) not null,
  sobrenome varchar(100) not null,
  perfil perfil_usuario not null default 'aluno'
);
 
create table if not exists escolas (
  id UUID primary key default uuid_generate_v4(),
  cnpj varchar(14) not null unique,
  nome varchar(50) not null,
  id_administrador UUID references usuarios(id) not null,
  constraint fk_administrador foreign key (id_administrador) references usuarios(id)
);
 
create table if not exists usuarios_escolas (
  id UUID primary key default uuid_generate_v4(),
  id_usuario UUID references usuarios(id) not null,
  id_escola UUID references escolas(id) not null,
  matricula varchar(50) not null,
  constraint fk_usuario foreign key (id_usuario) references usuarios(id),
  constraint fk_escola foreign key (id_escola) references escolas(id),
  unique(id_usuario, id_escola)
);
 
create table if not exists simulados (
  id UUID primary key default uuid_generate_v4(),
  titulo varchar(100) not null,
  id_escola UUID references escolas(id),
  constraint fk_escola foreign key (id_escola) references escolas(id)
);
 
create table if not exists sessoes (
  id UUID primary key default uuid_generate_v4(),
  id_aluno UUID references usuarios(id) not null,
  id_simulado UUID references simulados(id) not null,
  horario_iniciado timestamp not null default now(),
  horario_finalizado timestamp,
  estado estado_sessao not null default 'em andamento',
  num_questoes integer not null,
  num_questoes_corretas integer not null default 0,
  constraint fk_aluno foreign key (id_aluno) references usuarios(id),
  constraint fk_simulado foreign key (id_simulado) references simulados(id)
);
 
create table if not exists questoes (
  id UUID primary key default uuid_generate_v4(),
  pergunta json not null,
  alternativas json not null,
  numero_identificacao integer,
  numero_alternativa_certa integer not null
);
 
create table if not exists simulados_questoes (
  id UUID primary key default uuid_generate_v4(),
  id_questao UUID references questoes(id) not null,
  id_simulado UUID references simulados(id) not null,
  constraint fk_questao foreign key (id_questao) references questoes(id) on delete cascade,
  constraint fk_simulado foreign key (id_simulado) references simulados(id)
);
 
create table if not exists usuarios_respostas (
  id UUID primary key default uuid_generate_v4(),
  id_usuario UUID references usuarios(id) not null,
  id_questao UUID references questoes(id) not null,
  id_sessao UUID references sessoes(id) not null,
  numero_alternativa integer not null,
  data_clique timestamp not null default now(),
  acertou boolean not null,
  constraint fk_usuario foreign key (id_usuario) references usuarios(id),
  constraint fk_questao foreign key (id_questao) references questoes(id) on delete cascade,
  constraint fk_sessao foreign key (id_sessao) references sessoes(id),
  unique(id_sessao, id_questao)
);
 
-- RLS e Policies
alter table autenticacoes enable row level security;
alter table usuarios enable row level security;
alter table escolas enable row level security;
alter table usuarios_escolas enable row level security;
alter table sessoes enable row level security;
alter table usuarios_respostas enable row level security;
alter table simulados enable row level security;
alter table questoes enable row level security;
alter table simulados_questoes enable row level security;
 
create policy "Alunos gerenciam seu próprio perfil"
on usuarios for all to authenticated
using ( auth.uid() = id )
with check ( auth.uid() = id );
 
create policy "Alunos visualizam seus próprios vínculos"
on usuarios_escolas for select to authenticated
using ( auth.uid() = id_usuario );
 
create policy "Alunos acessam suas próprias sessões"
on sessoes for all to authenticated
using ( auth.uid() = id_aluno )
with check ( auth.uid() = id_aluno );
 
create policy "Alunos acessam suas próprias respostas"
on usuarios_respostas for all to authenticated
using ( auth.uid() = id_usuario )
with check ( auth.uid() = id_usuario );
 
create policy "Admins gerenciam sua própria escola"
on escolas for all to authenticated
using ( auth.uid() = id_administrador )
with check ( auth.uid() = id_administrador );
 
create policy "Admins gerenciam simulados da sua escola"
on simulados for all to authenticated
using (
  exists (
    select 1 from escolas
    where escolas.id = simulados.id_escola
      and escolas.id_administrador = auth.uid()
  )
);
 
create policy "Admins gerenciam questões dos simulados da sua escola"
on simulados_questoes for all to authenticated
using (
  exists (
    select 1 from simulados
    join escolas on escolas.id = simulados.id_escola
    where simulados.id = simulados_questoes.id_simulado
      and escolas.id_administrador = auth.uid()
  )
);
 
create policy "Admins gerenciam vínculos da sua escola"
on usuarios_escolas for all to authenticated
using (
  exists (
    select 1 from escolas
    where escolas.id = usuarios_escolas.id_escola
      and escolas.id_administrador = auth.uid()
  )
);
 
create policy "Admins auditam sessões dos alunos da sua escola"
on sessoes for select to authenticated
using (
  exists (
    select 1 from usuarios_escolas
    join escolas on escolas.id = usuarios_escolas.id_escola
    where usuarios_escolas.id_usuario = sessoes.id_aluno
      and escolas.id_administrador = auth.uid()
  )
);
 
create policy "Admins auditam respostas dos alunos da sua escola"
on usuarios_respostas for select to authenticated
using (
  exists (
    select 1 from usuarios_escolas
    join escolas on escolas.id = usuarios_escolas.id_escola
    where usuarios_escolas.id_usuario = usuarios_respostas.id_usuario
      and escolas.id_administrador = auth.uid()
  )
);
 
create policy "Qualquer usuário autenticado pode ler o banco de questões"
on questoes for select to authenticated
using ( true );
 
create policy "Alunos podem ver simulados da sua escola"
on public.simulados for select to authenticated
using (
  exists (
    select 1 from public.usuarios_escolas
    where usuarios_escolas.id_escola = simulados.id_escola
      and usuarios_escolas.id_usuario = auth.uid()
  )
);
 
create policy "Alunos podem ver as questões dos simulados"
on public.simulados_questoes for select to authenticated
using (
  exists (
    select 1 from public.usuarios_escolas
    join public.simulados on simulados.id_escola = usuarios_escolas.id_escola
    where simulados.id = simulados_questoes.id_simulado
      and usuarios_escolas.id_usuario = auth.uid()
  )
);
 
create policy "Admins podem visualizar perfis dos alunos da sua escola"
on public.usuarios for select to authenticated
using (
  exists (
    select 1 from public.usuarios_escolas
    join public.escolas on escolas.id = usuarios_escolas.id_escola
    where usuarios_escolas.id_usuario = usuarios.id
      and escolas.id_administrador = auth.uid()
  )
);
 
create policy "Alunos podem visualizar a escola onde estão vinculados"
on public.escolas for select to authenticated
using (
  exists (
    select 1 from public.usuarios_escolas
    where usuarios_escolas.id_escola = escolas.id
      and usuarios_escolas.id_usuario = auth.uid()
  )
);
 
-- Triggers
create or replace function trg_inicializa_perfil_usuario()
returns trigger
language plpgsql
as $$
begin
  insert into usuarios (id, nome, sobrenome, perfil)
  values (new.id, 'Nome Pendente', 'Sobrenome Pendente', 'aluno');
  return new;
end;
$$;
 
create trigger trigger_apos_inserir_autenticacao
after insert on autenticacoes
for each row
execute function trg_inicializa_perfil_usuario();
 
create or replace function validar_administrador_escolar()
returns trigger
language plpgsql
as $$
declare
    perfil_admin perfil_usuario;
begin
    select perfil
    into perfil_admin
    from usuarios
    where id = new.id_administrador;
 
    if perfil_admin <> 'administrador escolar' then
        raise exception
        'O usuário informado não possui o perfil "administrador escolar".';
    end if;
 
    return new;
end;
$$;
 
create trigger trg_validar_administrador_escolar
before insert on escolas
for each row
execute function validar_administrador_escolar();
 
 create or replace function trg_consolida_resultados_sessao()
returns trigger
language plpgsql
as $$
declare
    v_sessao_alvo UUID;
begin
    if tg_op = 'DELETE' then
        v_sessao_alvo := old.id_sessao;
    else
        v_sessao_alvo := new.id_sessao;
    end if;

    update sessoes
    set 
        num_questoes = (select count(*) from usuarios_respostas where id_sessao = v_sessao_alvo),
        num_questoes_corretas = (select count(*) from usuarios_respostas where id_sessao = v_sessao_alvo and acertou = true)
    where id = v_sessao_alvo;
    return null; 
end;
$$;
 
create trigger trigger_atualiza_estatisticas_sessao
after insert or update or delete on usuarios_respostas
for each row
execute function trg_consolida_resultados_sessao();