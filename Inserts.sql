insert into autenticacoes (hash_senha) values 
('MlhnXgwKmT'), ('7SyjPwKjlS'), ('8lMQ7BZWjn'), ('M6FKPkldrG'), ('LAbJ8SpTej'),
('LA6XCbhCza'), ('w1NUZeuB89'), ('Nuw1mCtxst'), ('Bw5SMEQuaC'), ('SJ42tjar9O'), ('MjrXFUsGGW'), ('48ELS1KMLw');
  

UPDATE usuarios SET nome = 'Arthur Carlos', sobrenome = 'Viana', perfil = 'aluno' WHERE id IN ( 
  SELECT id FROM usuarios WHERE nome = 'Nome Pendente' AND sobrenome = 'Sobrenome Pendente' LIMIT 1); 
UPDATE usuarios SET nome = 'Yago Murilo', sobrenome = 'Raul Nascimento', perfil = 'aluno' WHERE id IN (
  SELECT id FROM usuarios WHERE nome = 'Nome Pendente' AND sobrenome = 'Sobrenome Pendente' LIMIT 1); 
UPDATE usuarios SET nome = 'Gabriel', sobrenome = 'Novaes', perfil = 'aluno' WHERE id IN ( 
  SELECT id FROM usuarios WHERE nome = 'Nome Pendente' AND sobrenome = 'Sobrenome Pendente' LIMIT 1); 
UPDATE usuarios SET nome = 'Martin Erick', sobrenome = 'da Costa', perfil = 'aluno' WHERE id IN ( 
  SELECT id FROM usuarios WHERE nome = 'Nome Pendente' AND sobrenome = 'Sobrenome Pendente' LIMIT 1); 
UPDATE usuarios SET nome = 'Benjamin Samuel', sobrenome = 'Moreira', perfil = 'aluno' WHERE id IN ( 
  SELECT id FROM usuarios WHERE nome = 'Nome Pendente' AND sobrenome = 'Sobrenome Pendente' LIMIT 1); 
UPDATE usuarios SET nome = 'Benício Ricardo', sobrenome = 'dos Santos', perfil = 'administrador escolar' WHERE id IN ( 
  SELECT id FROM usuarios WHERE nome = 'Nome Pendente' AND sobrenome = 'Sobrenome Pendente' LIMIT 1); 
UPDATE usuarios SET nome = 'Bryan Vitor', sobrenome = 'Cavalcanti', perfil = 'administrador escolar' WHERE id IN ( 
  SELECT id FROM usuarios WHERE nome = 'Nome Pendente' AND sobrenome = 'Sobrenome Pendente' LIMIT 1); 
UPDATE usuarios SET nome = 'Henrique Renan', sobrenome = 'Rosa', perfil = 'administrador escolar' WHERE id IN ( 
  SELECT id FROM usuarios WHERE nome = 'Nome Pendente' AND sobrenome = 'Sobrenome Pendente' LIMIT 1); 
UPDATE usuarios SET nome = 'Iago', sobrenome = 'Sada', perfil = 'administrador escolar' WHERE id IN ( 
  SELECT id FROM usuarios WHERE nome = 'Nome Pendente' AND sobrenome = 'Sobrenome Pendente' LIMIT 1); 
UPDATE usuarios SET nome = 'Marcos Ricardo', sobrenome = 'Lopes', perfil = 'administrador global' WHERE id IN ( 
  SELECT id FROM usuarios WHERE nome = 'Nome Pendente' AND sobrenome = 'Sobrenome Pendente' LIMIT 1);
UPDATE usuarios SET nome = 'Augusto Kaique', sobrenome = 'Castro', perfil = 'aluno' WHERE id IN ( 
  SELECT id FROM usuarios WHERE nome = 'Nome Pendente' AND sobrenome = 'Sobrenome Pendente' LIMIT 1); 
UPDATE usuarios SET nome = 'Hadassa Vanessa', sobrenome = 'Fernandes', perfil = 'aluno' WHERE id IN ( 
  SELECT id FROM usuarios WHERE nome = 'Nome Pendente' AND sobrenome = 'Sobrenome Pendente' LIMIT 1); 
 

--Insert Escolas 
INSERT INTO escolas (cnpj, nome, id_administrador) VALUES 
('ZGK29FYA000108', 'EMEB Silvio Sirilanka',  
  (SELECT id FROM usuarios WHERE nome = 'Benício Ricardo' AND sobrenome = 'dos Santos' LIMIT 1)), 
('79BFIIT1000148', 'EMEB Rodolfo Guimaraes',  
  (SELECT id FROM usuarios WHERE nome = 'Bryan Vitor' AND sobrenome = 'Cavalcanti' LIMIT 1)), 
('9I40RJTT000130', 'Colegio Alfa e Omega',  
  (SELECT id FROM usuarios WHERE nome = 'Henrique Renan' AND sobrenome = 'Rosa' LIMIT 1)), 
('KIVJJE30000107', 'EEB Platao Vive',  
  (SELECT id FROM usuarios WHERE nome = 'Iago' AND sobrenome = 'Sada' LIMIT 1)), 
('VAM8B15V000174', 'Centro Educacional Timothee Chalamet',  
  (SELECT id FROM usuarios WHERE nome = 'Benício Ricardo' AND sobrenome = 'dos Santos' LIMIT 1)), 
('JIEFWIIB000147', 'Instituto BTS Joao Johncookie',  
  (SELECT id FROM usuarios WHERE nome = 'Bryan Vitor' AND sobrenome = 'Cavalcanti' LIMIT 1)), 
('IMYBIM8D000103', 'EEB Mestre Picasso',  
  (SELECT id FROM usuarios WHERE nome = 'Henrique Renan' AND sobrenome = 'Rosa' LIMIT 1)), 
('UHXEJ8UK000127', 'Instituto Egg Sheeran',  
  (SELECT id FROM usuarios WHERE nome = 'Iago' AND sobrenome = 'Sada' LIMIT 1)), 
('5IFS7AJD000162', 'Colégio Militar Oli London',  
  (SELECT id FROM usuarios WHERE nome = 'Benício Ricardo' AND sobrenome = 'dos Santos' LIMIT 1)); 
 

--Insert usuarios_escolas 
INSERT INTO usuarios_escolas (id_usuario, id_escola, matricula) VALUES 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), 
 (SELECT id FROM escolas WHERE nome = 'EMEB Silvio Sirilanka' LIMIT 1), '2026000101'), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), 
 (SELECT id FROM escolas WHERE nome = 'EMEB Rodolfo Guimaraes' LIMIT 1), '2026000102'), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), 
 (SELECT id FROM escolas WHERE nome = 'Colegio Alfa e Omega' LIMIT 1), '2026000103'), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), 
 (SELECT id FROM escolas WHERE nome = 'EEB Platao Vive' LIMIT 1), '2026000104'), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), 
 (SELECT id FROM escolas WHERE nome = 'Centro Educacional Timothee Chalamet' LIMIT 1), '2026000105'), 
 ((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), 
 (SELECT id FROM escolas WHERE nome = 'Instituto BTS Joao Johncookie' LIMIT 1), '2026000106'), 
 ((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), 
 (SELECT id FROM escolas WHERE nome = 'EEB Mestre Picasso' LIMIT 1), '2026000107'), 
 ((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), 
 (SELECT id FROM escolas WHERE nome = 'Instituto Egg Sheeran' LIMIT 1), '2026000108'), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), 
 (SELECT id FROM escolas WHERE nome = 'Colégio Militar Oli London' LIMIT 1), '2026000109'),
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), 
 (SELECT id FROM escolas WHERE nome = 'Instituto BTS Joao Johncookie' LIMIT 1), '20260001100'); 


insert into simulados (titulo, id_escola) values 
('Questões ENEM 2020', (SELECT id FROM escolas WHERE nome = 'EMEB Silvio Sirilanka' LIMIT 1)), 
('Treinamento ENEM 2022', (SELECT id FROM escolas WHERE nome = 'Instituto BTS Joao Johncookie' LIMIT 1)), 
('Simulado ENAD 2018', (SELECT id FROM escolas WHERE nome = 'EEB Mestre Picasso' LIMIT 1)), 
('Questões ENEM 2025', (SELECT id FROM escolas WHERE nome = 'Colegio Alfa e Omega' LIMIT 1)), 
('Simulado Senai 2023', (SELECT id FROM escolas WHERE nome = 'Centro Educacional Timothee Chalamet' LIMIT 1)); 


insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Qual é a capital do Brasil?"}',  
'[ 
  {"numero": 1, "texto": "São Paulo"}, 
  {"numero": 2, "texto": "Brasília"},  
  {"numero": 3, "texto": "Rio de Janeiro"}, 
  {"numero": 4, "texto": "Salvador"} 
]', 1001, 2); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Quanto é 7 * 8?"}',  
'[ 
  {"numero": 1, "texto": "54"}, 
  {"numero": 2, "texto": "56"},  
  {"numero": 3, "texto": "64"}, 
  {"numero": 4, "texto": "58"} 
]', 1002, 2); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Quem pintou a Mona Lisa?"}',  
'[ 
  {"numero": 1, "texto": "Van Gogh"}, 
  {"numero": 2, "texto": "Picasso"},  
  {"numero": 3, "texto": "Leonardo da Vinci"}, 
  {"numero": 4, "texto": "Michelangelo"} 
]', 1003, 3); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Qual planeta é conhecido como Planeta Vermelho?"}',  
'[ 
  {"numero": 1, "texto": "Marte"}, 
  {"numero": 2, "texto": "Júpiter"},  
  {"numero": 3, "texto": "Saturno"}, 
  {"numero": 4, "texto": "Vênus"} 
]', 1004, 1); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Qual é o maior oceano do mundo?"}',  
'[ 
  {"numero": 1, "texto": "Atlântico"}, 
  {"numero": 2, "texto": "Índico"},  
  {"numero": 3, "texto": "Ártico"}, 
  {"numero": 4, "texto": "Pacífico"} 
]', 1005, 4); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Qual linguagem é mais usada para páginas web?"}',  
'[ 
  {"numero": 1, "texto": "Python"}, 
  {"numero": 2, "texto": "Java"},  
  {"numero": 3, "texto": "JavaScript"}, 
  {"numero": 4, "texto": "C++"} 
]', 1006, 1); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Em que continente fica o Egito?"}',  
'[ 
  {"numero": 1, "texto": "Ásia"}, 
  {"numero": 2, "texto": "Europa"},  
  {"numero": 3, "texto": "África"}, 
  {"numero": 4, "texto": "Oceania"} 
]', 1007, 3); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Qual é o símbolo químico da água?"}',  
'[ 
  {"numero": 1, "texto": "O2"}, 
  {"numero": 2, "texto": "CO2"},
  {"numero": 3, "texto": "H2O"}, 
  {"numero": 4, "texto": "NaCl"} 
]', 1008, 3); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Quem escreveu Dom Casmurro?"}',  
'[ 
  {"numero": 1, "texto": "José de Alencar"}, 
  {"numero": 2, "texto": "Machado de Assis"},  
  {"numero": 3, "texto": "Clarice Lispector"}, 
  {"numero": 4, "texto": "Carlos Drummond"} 
]', 1009, 2);
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Qual é o resultado de 15 ÷ 3?"}',  
'[ 
  {"numero": 1, "texto": "3"}, 
  {"numero": 2, "texto": "4"},  
  {"numero": 3, "texto": "5"}, 
  {"numero": 4, "texto": "6"} 
]', 1010, 3); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Qual país venceu a Copa de 2002?"}',  
'[ 
  {"numero": 1, "texto": "Alemanha"}, 
  {"numero": 2, "texto": "Brasil"},  
  {"numero": 3, "texto": "França"}, 
  {"numero": 4, "texto": "Argentina"} 
]', 1011, 2); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Qual é o animal símbolo da Austrália?"}',  
'[ 
  {"numero": 1, "texto": "Tigre"}, 
  {"numero": 2, "texto": "Panda"},  
  {"numero": 3, "texto": "Canguru"}, 
  {"numero": 4, "texto": "Urso"} 
]', 1012, 3); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Qual gás as plantas absorvem?"}',  
'[ 
  {"numero": 1, "texto": "Oxigênio"}, 
  {"numero": 2, "texto": "Nitrogênio"},  
  {"numero": 3, "texto": "Gás carbônico"}, 
  {"numero": 4, "texto": "Hidrogênio"} 
]', 1013, 3); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Qual é a moeda dos Estados Unidos?"}',  
'[ 
  {"numero": 1, "texto": "Euro"}, 
  {"numero": 2, "texto": "Libra"},  
  {"numero": 3, "texto": "Dólar"}, 
  {"numero": 4, "texto": "Peso"} 
]', 1014, 3); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Quem foi o primeiro homem na Lua?"}',  
'[ 
  {"numero": 1, "texto": "Yuri Gagarin"}, 
  {"numero": 2, "texto": "Buzz Aldrin"},  
  {"numero": 3, "texto": "Neil Armstrong"}, 
  {"numero": 4, "texto": "Alan Shepard"} 
]', 1015, 3); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Qual é o menor país do mundo?"}',  
'[
  {"numero": 1, "texto": "Mônaco"}, 
  {"numero": 2, "texto": "Vaticano"},  
  {"numero": 3, "texto": "Luxemburgo"}, 
  {"numero": 4, "texto": "Malta"} 
]', 1016, 2); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Qual estrutura armazena dados em SQL?"}',  
'[ 
  {"numero": 1, "texto": "Classe"}, 
  {"numero": 2, "texto": "Array"},  
  {"numero": 3, "texto": "Tabela"}, 
  {"numero": 4, "texto": "Função"} 
]', 1017, 3); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Quantos lados tem um hexágono?"}',  
'[
  {"numero": 1, "texto": "5"}, 
  {"numero": 2, "texto": "6"},  
  {"numero": 3, "texto": "7"}, 
  {"numero": 4, "texto": "8"} 
]', 1018, 2); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Qual é a principal estrela do sistema solar?"}',  
'[ 
  {"numero": 1, "texto": "Lua"}, 
  {"numero": 2, "texto": "Marte"},  
  {"numero": 3, "texto": "Sol"}, 
  {"numero": 4, "texto": "Saturno"} 
]', 1019, 3); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Qual comando SQL remove dados?"}',  
'[ 
  {"numero": 1, "texto": "CREATE"}, 
  {"numero": 2, "texto": "UPDATE"},  
  {"numero": 3, "texto": "DELETE"}, 
  {"numero": 4, "texto": "SELECT"} 
]', 1020, 3); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Qual é o maior planeta do sistema solar?"}',  
'[ 
  {"numero": 1, "texto": "Terra"}, 
  {"numero": 2, "texto": "Marte"},  
  {"numero": 3, "texto": "Júpiter"}, 
  {"numero": 4, "texto": "Saturno"} 
]', 1021, 3); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Qual comando SQL é usado para consultar dados?"}',  
'[ 
  {"numero": 1, "texto": "INSERT"}, 
  {"numero": 2, "texto": "SELECT"},  
  {"numero": 3, "texto": "DELETE"}, 
  {"numero": 4, "texto": "DROP"} 
]', 1022, 2); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Quem escreveu Harry Potter?"}',  
'[ 
  {"numero": 1, "texto": "J. R. R. Tolkien"}, 
  {"numero": 2, "texto": "George R. R. Martin"},  
  {"numero": 3, "texto": "J. K. Rowling"}, 
  {"numero": 4, "texto": "Stephen King"} 
]', 1023, 3); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Qual é a fórmula química do sal de cozinha?"}',  
'[ 
  {"numero": 1, "texto": "H2O"}, 
  {"numero": 2, "texto": "CO2"},  
  {"numero": 3, "texto": "NaCl"}, 
  {"numero": 4, "texto": "O2"} 
]', 1024, 3); 
insert into questoes (pergunta, alternativas, numero_identificacao, numero_alternativa_certa) values 
('{"texto": "Quantos continentes existem na Terra?"}',  
'[ 
  {"numero": 1, "texto": "5"}, 
  {"numero": 2, "texto": "6"},  
  {"numero": 3, "texto": "7"}, 
  {"numero": 4, "texto": "8"} 
]', 1025, 3); 


insert into simulados_questoes (id_questao, id_simulado) values 
((SELECT id FROM questoes WHERE numero_identificacao = 1001 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2020' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1011 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2020' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1021 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2020' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1007 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2020' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1008 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2020' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1012 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2020' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1013 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2020' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1003 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2020' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1025 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2020' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1022 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2020' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1017 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2020' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1001 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Treinamento ENEM 2022' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1002 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Treinamento ENEM 2022' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1004 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Treinamento ENEM 2022' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1008 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Treinamento ENEM 2022' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1016 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Treinamento ENEM 2022' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1018 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Treinamento ENEM 2022' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1021 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Treinamento ENEM 2022' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1009 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Treinamento ENEM 2022' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1012 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Treinamento ENEM 2022' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1024 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Treinamento ENEM 2022' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1006 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado ENAD 2018' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1007 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado ENAD 2018' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1008 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado ENAD 2018' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1009 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado ENAD 2018' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1010 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado ENAD 2018' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1021 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado ENAD 2018' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1022 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado ENAD 2018' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1023 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado ENAD 2018' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1024 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado ENAD 2018' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1025 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado ENAD 2018' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1015 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado ENAD 2018' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1011 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2025' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1013 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2025' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1014 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2025' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1017 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2025' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1018 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2025' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1020 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2025' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1019 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2025' LIMIT 1)),
((SELECT id FROM questoes WHERE numero_identificacao = 1003 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2025' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1006 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2025' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1009 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2025' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1010 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2025' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1004 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado Senai 2023' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1006 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado Senai 2023' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1002 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado Senai 2023' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1001 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado Senai 2023' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1014 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado Senai 2023' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1017 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado Senai 2023' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1018 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado Senai 2023' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1021 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado Senai 2023' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1024 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado Senai 2023' LIMIT 1)), 
((SELECT id FROM questoes WHERE numero_identificacao = 1025 LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado Senai 2023' LIMIT 1)); 


insert into sessoes (id_aluno, id_simulado, horario_iniciado, horario_finalizado, estado, num_questoes, num_questoes_corretas) values 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2020' LIMIT 1), '2026-05-01 08:00:00', '2026-05-01 08:25:00', 'concluida', 0, 0), 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Treinamento ENEM 2022' LIMIT 1), '2026-05-02 09:00:00', '2026-05-02 09:20:00', 'concluida', 0, 0), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado ENAD 2018' LIMIT 1), '2026-05-03 10:00:00', '2026-05-03 10:30:00', 'concluida', 0, 0), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2025' LIMIT 1), '2026-05-04 14:00:00', '2026-05-04 14:25:00', 'concluida', 0, 0), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado Senai 2023' LIMIT 1), '2026-05-05 08:10:00', '2026-05-05 08:40:00', 'concluida', 0, 0), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2020' LIMIT 1), '2026-05-06 13:00:00', '2026-05-06 13:30:00', 'concluida', 0, 0), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Treinamento ENEM 2022' LIMIT 1), '2026-05-07 09:15:00', '2026-05-07 09:45:00', 'concluida', 0, 0), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado ENAD 2018' LIMIT 1), '2026-05-08 10:20:00', '2026-05-08 10:50:00', 'concluida', 0, 0), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2025' LIMIT 1), '2026-05-09 15:00:00', '2026-05-09 15:35:00', 'concluida', 0, 0), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado Senai 2023' LIMIT 1), '2026-05-10 16:00:00', '2026-05-10 16:28:00', 'concluida', 0, 0),
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2020' LIMIT 1), '2026-05-02 18:00:00', '2026-05-02 20:25:00', 'concluida', 0, 3);

insert into sessoes (id_aluno, id_simulado, horario_iniciado, horario_finalizado, estado, num_questoes, num_questoes_corretas) values 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2020' LIMIT 1), '2026-05-11 08:00:00', '2026-05-11 08:32:00', 'concluida', 0, 0), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2025' LIMIT 1), '2026-05-12 09:10:00', '2026-05-12 09:40:00', 'concluida', 0, 0), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado Senai 2023' LIMIT 1), '2026-05-13 10:15:00', '2026-05-13 10:45:00', 'concluida', 0, 0), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Treinamento ENEM 2022' LIMIT 1), '2026-05-14 14:00:00', '2026-05-14 14:30:00', 'concluida', 0, 0), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado ENAD 2018' LIMIT 1), '2026-05-15 15:20:00', '2026-05-15 15:55:00', 'concluida', 0, 0), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2020' LIMIT 1), '2026-05-16 08:30:00', '2026-05-16 09:00:00', 'concluida', 0, 0), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Questões ENEM 2025' LIMIT 1), '2026-05-17 11:00:00', '2026-05-17 11:31:00', 'concluida', 0, 0), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM simulados WHERE titulo = 'Simulado Senai 2023' LIMIT 1), '2026-05-18 16:10:00', '2026-05-18 16:45:00', 'concluida', 0, 0); 

insert into usuarios_respostas (id_usuario, id_questao, id_sessao, numero_alternativa, acertou) values 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1001 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-01 08:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1011 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-01 08:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1021 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-01 08:00:00' LIMIT 1), 1, false), 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1007 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-01 08:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1008 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-01 08:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1012 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-01 08:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1013 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-01 08:00:00' LIMIT 1), 2, false), 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1003 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-01 08:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1025 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-01 08:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1022 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-01 08:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1001 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-02 09:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1002 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-02 09:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1004 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-02 09:00:00' LIMIT 1), 1, true), 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1008 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-02 09:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1016 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-02 09:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1018 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-02 09:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1021 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-02 09:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1009 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-02 09:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1012 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-02 09:00:00' LIMIT 1), 1, false), 
((SELECT id FROM usuarios WHERE nome = 'Arthur Carlos' AND sobrenome = 'Viana' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1024 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-02 09:00:00' LIMIT 1), 3, true); 

insert into usuarios_respostas (id_usuario, id_questao, id_sessao, numero_alternativa, acertou) values 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1006 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-03 10:00:00' LIMIT 1), 3, false), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1007 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-03 10:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1008 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-03 10:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1009 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-03 10:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1010 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-03 10:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1021 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-03 10:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1022 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-03 10:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1023 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-03 10:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1024 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-03 10:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1025 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-03 10:00:00' LIMIT 1), 2, false), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1011 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-04 14:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1013 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-04 14:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1014 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-04 14:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1017 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-04 14:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1018 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-04 14:00:00' LIMIT 1), 1, false), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1020 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-04 14:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1019 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-04 14:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1003 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-04 14:00:00' LIMIT 1), 2, false), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1006 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-04 14:00:00' LIMIT 1), 1, true), 
((SELECT id FROM usuarios WHERE nome = 'Yago Murilo' AND sobrenome = 'Raul Nascimento' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1009 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-04 14:00:00' LIMIT 1), 2, true); 

insert into usuarios_respostas (id_usuario, id_questao, id_sessao, numero_alternativa, acertou) values 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1004 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-05 08:10:00' LIMIT 1), 1, true), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1006 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-05 08:10:00' LIMIT 1), 3, false), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1002 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-05 08:10:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1001 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-05 08:10:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1014 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-05 08:10:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1017 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-05 08:10:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1018 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-05 08:10:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1021 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-05 08:10:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1024 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-05 08:10:00' LIMIT 1), 1, false), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1025 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-05 08:10:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1001 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-06 13:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1011 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-06 13:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1021 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-06 13:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1007 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-06 13:00:00' LIMIT 1), 2, false), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1008 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-06 13:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1012 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-06 13:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1013 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-06 13:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1003 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-06 13:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1025 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-06 13:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Gabriel' AND sobrenome = 'Novaes' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1022 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-06 13:00:00' LIMIT 1), 2, true); 

insert into usuarios_respostas (id_usuario, id_questao, id_sessao, numero_alternativa, acertou) values 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1001 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-07 09:15:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1002 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-07 09:15:00' LIMIT 1), 1, false), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1004 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-07 09:15:00' LIMIT 1), 1, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1008 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-07 09:15:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1016 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-07 09:15:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1018 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-07 09:15:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1021 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-07 09:15:00' LIMIT 1), 4, false), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1009 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-07 09:15:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1012 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-07 09:15:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1024 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-07 09:15:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1006 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-08 10:20:00' LIMIT 1), 1, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1007 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-08 10:20:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1008 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-08 10:20:00' LIMIT 1), 2, false), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1009 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-08 10:20:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1010 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-08 10:20:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1021 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-08 10:20:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1022 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-08 10:20:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1023 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-08 10:20:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1024 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-08 10:20:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1025 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-08 10:20:00' LIMIT 1), 3, true); 

insert into usuarios_respostas (id_usuario, id_questao, id_sessao, numero_alternativa, acertou) values 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1011 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-09 15:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1013 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-09 15:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1014 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-09 15:00:00' LIMIT 1), 2, false), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1017 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-09 15:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1018 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-09 15:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1020 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-09 15:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1019 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-09 15:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1003 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-09 15:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1006 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-09 15:00:00' LIMIT 1), 1, true), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1009 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-09 15:00:00' LIMIT 1), 4, false), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1004 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-10 16:00:00' LIMIT 1), 1, true), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1006 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-10 16:00:00' LIMIT 1), 1, true), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1002 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-10 16:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1001 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-10 16:00:00' LIMIT 1), 3, false), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1014 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-10 16:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1017 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-10 16:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1018 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-10 16:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1021 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-10 16:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1024 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-10 16:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Benjamin Samuel' AND sobrenome = 'Moreira' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1025 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-10 16:00:00' LIMIT 1), 1, false);

insert into usuarios_respostas (id_usuario, id_questao, id_sessao, numero_alternativa, acertou) values 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1001 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-11 08:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1011 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-11 08:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1021 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-11 08:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1007 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-11 08:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1008 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-11 08:00:00' LIMIT 1), 1, false), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1012 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-11 08:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1013 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-11 08:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1003 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-11 08:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1025 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-11 08:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1022 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-11 08:00:00' LIMIT 1), 2, true), 

((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1011 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-12 09:10:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1013 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-12 09:10:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1014 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-12 09:10:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1017 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-12 09:10:00' LIMIT 1), 2, false), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1018 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-12 09:10:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1020 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-12 09:10:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1019 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-12 09:10:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1003 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-12 09:10:00' LIMIT 1), 1, false), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1006 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-12 09:10:00' LIMIT 1), 1, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1009 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-12 09:10:00' LIMIT 1), 2, true);

insert into usuarios_respostas (id_usuario, id_questao, id_sessao, numero_alternativa, acertou) values 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1004 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-13 10:15:00' LIMIT 1), 1, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1006 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-13 10:15:00' LIMIT 1), 1, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1002 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-13 10:15:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1001 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-13 10:15:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1014 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-13 10:15:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1017 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-13 10:15:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1018 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-13 10:15:00' LIMIT 1), 4, false), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1021 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-13 10:15:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1024 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-13 10:15:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1025 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-13 10:15:00' LIMIT 1), 3, true), 

((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1001 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-14 14:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1002 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-14 14:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1004 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-14 14:00:00' LIMIT 1), 1, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1008 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-14 14:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1016 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-14 14:00:00' LIMIT 1), 1, false), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1018 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-14 14:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1021 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-14 14:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1009 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-14 14:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1012 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-14 14:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1024 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-14 14:00:00' LIMIT 1), 2, false);

insert into usuarios_respostas (id_usuario, id_questao, id_sessao, numero_alternativa, acertou) values 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1006 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-15 15:20:00' LIMIT 1), 1, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1007 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-15 15:20:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1008 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-15 15:20:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1009 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-15 15:20:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1010 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-15 15:20:00' LIMIT 1), 2, false), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1021 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-15 15:20:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1022 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-15 15:20:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1023 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-15 15:20:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1024 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-15 15:20:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1025 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-15 15:20:00' LIMIT 1), 3, true), 

((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1001 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-16 08:30:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1011 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-16 08:30:00' LIMIT 1), 4, false), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1021 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-16 08:30:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1007 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-16 08:30:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1008 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-16 08:30:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1012 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-16 08:30:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1013 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-16 08:30:00' LIMIT 1), 1, false), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1003 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-16 08:30:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1025 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-16 08:30:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1022 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-16 08:30:00' LIMIT 1), 2, true);

insert into usuarios_respostas (id_usuario, id_questao, id_sessao, numero_alternativa, acertou) values 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1011 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-17 11:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1013 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-17 11:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1014 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-17 11:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1017 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-17 11:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1018 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-17 11:00:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1020 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-17 11:00:00' LIMIT 1), 1, false), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1019 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-17 11:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1003 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-17 11:00:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1006 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-17 11:00:00' LIMIT 1), 1, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1009 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-17 11:00:00' LIMIT 1), 2, true), 

((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1004 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-18 16:10:00' LIMIT 1), 1, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1006 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-18 16:10:00' LIMIT 1), 1, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1002 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-18 16:10:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1001 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-18 16:10:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1014 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-18 16:10:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1017 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-18 16:10:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1018 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-18 16:10:00' LIMIT 1), 2, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1021 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-18 16:10:00' LIMIT 1), 2, false), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1024 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-18 16:10:00' LIMIT 1), 3, true), 
((SELECT id FROM usuarios WHERE nome = 'Martin Erick' AND sobrenome = 'da Costa' LIMIT 1), (SELECT id FROM questoes WHERE numero_identificacao = 1025 LIMIT 1), (SELECT id FROM sessoes WHERE horario_iniciado = '2026-05-18 16:10:00' LIMIT 1), 3, true);