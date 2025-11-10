USE ESCOLA_TECNICA;
SELECT * FROM Canteiro;
SELECT * FROM Planta;
SELECT * FROM Instituicao;
SELECT * FROM colheita;
SELECT * FROM cultivo;
SELECT * FROM voluntario;
SELECT * FROM doacao;


/*Inserindo dados em tabelas independentes*/
/* Inserindo dados na tabela Voluntario */
/* Voluntário 1 (Original) */
INSERT INTO Voluntario (IdVoluntario, CPF, Nome, Funcao, Data_Nasc, CEP, Numero, Telefone, Complemento, Turno, Serie) 
VALUES 
(NULL, '111.222.333-44', 'Ana Silva', 'Líder de Canteiro', '2005-03-15', '50000-001', 100, '(81) 91111-1111', 'Apto 202', 'manhã', '3º Ano ETE');

/* Voluntário 2 (Original) */
INSERT INTO Voluntario (IdVoluntario, CPF, Nome, Funcao, Data_Nasc, CEP, Numero, Telefone, Complemento, Turno, Serie) 
VALUES 
(NULL, '222.333.444-55', 'Bruno Costa', 'Controle de Irrigação', '2004-11-20', '50000-002', 25, '(81) 92222-2222', NULL, 'tarde', '2º Ano ETE');

/* Voluntário 3 (Segundo Bloco) */
INSERT INTO Voluntario (IdVoluntario, CPF, Nome, Funcao, Data_Nasc, CEP, Numero, Telefone, Complemento, Turno, Serie) 
VALUES 
(NULL, '333.444.555-66', 'Carlos Souza', 'Logística de Doação', '2006-01-10', '52050-010', 300, '(81) 93333-3333', 'Bloco C, Apto 101', 'noite', '1º Ano ETE');

/* Voluntário 4 (Segundo Bloco) */
INSERT INTO Voluntario (IdVoluntario, CPF, Nome, Funcao, Data_Nasc, CEP, Numero, Telefone, Complemento, Turno, Serie) 
VALUES 
(NULL, '444.555.666-77', 'Mariana Lima', 'Manutenção de Ferramentas', '2005-07-05', '51020-020', 1250, '(81) 94444-4444', NULL, 'manhã', '2º Ano ETE');

/* Inserindo dados na tabela Planta */
INSERT INTO Planta (IdPlanta, NomeCientifico, NomeComum, Tipo) 
VALUES 
(NULL, 'Lactuca sativa', 'Alface Crespa', 'Hortaliça'),
(NULL, 'Solanum lycopersicum', 'Tomate Cereja', 'Fruto'),
(NULL, 'Mentha spicata', 'Hortelã', 'Erva Aromática');

/* Inserindo dados na tabela Canteiro */
INSERT INTO Canteiro (IdCanteiro, Localizacao, Largura, Comprimento, Altura) 
VALUES 
(NULL, 'Área Leste - Bloco A', 1.20, 5.00, 0.30),
(NULL, 'Área Norte - Pátio', 1.00, 3.50, 0.40);

/* Inserindo dados na tabela Instituicao */
INSERT INTO Instituicao (IdInstituicao, Nome, CEP, Numero, Telefone, Complemento) 
VALUES 
(NULL, 'Creche Criança Feliz', '51010-010', 500, '(81) 3333-4444', 'Próximo à praça'),
(NULL, 'Asilo Bom Viver', '52020-020', 1230, '(81) 3555-6666', NULL);

/* Inserindo dados na tabela Cultivo */
/* * Assumindo:
 * IdVoluntario = 1 (Ana Silva)
 * IdCanteiro = 1 (Área Leste)
 * IdPlanta = 1 (Alface Crespa)
 
 * IdVoluntario = 2 (Bruno Costa)
 * IdCanteiro = 2 (Área Norte)
 * IdPlanta = 2 (Tomate Cereja)
 */
INSERT INTO Cultivo (IdCultivo, IdVoluntario, IdCanteiro, IdPlanta, DataCultivo) 
VALUES 
(NULL, 1, 1, 1, '2025-09-01'),
(NULL, 2, 2, 2, '2025-09-05');

/* Inserindo dados na tabela Colheita */
/* * Assumindo:
 * IdCanteiro = 1 (Área Leste)
 * IdPlanta = 1 (Alface Crespa)
 
 * IdCanteiro = 2 (Área Norte)
 * IdPlanta = 2 (Tomate Cereja)
 */
INSERT INTO Colheita (IdColheita, IdCanteiro, IdPlanta, Data, Quantidade) 
VALUES 
(NULL, 1, 1, '2025-10-15', '20 maços'),
(NULL, 2, 2, '2025-11-01', '5.5 kg');

/* Inserindo dados na tabela Doacao */
/* * Assumindo:
 * IdColheita = 1 (Colheita de 20 maços de alface)
 * IdInstituicao = 1 (Creche Criança Feliz)
 
 * IdColheita = 2 (Colheita de 5.5 kg de tomate)
 * IdInstituicao = 2 (Asilo Bom Viver)
 */
INSERT INTO Doacao (IdDoacao, IdColheita, IdInstituicao, DataDoacao, QuantidadeDoada) 
VALUES 
(NULL, 1, 1, '2025-10-16', '10 maços'),
(NULL, 2, 2, '2025-11-02', '5.0 kg');