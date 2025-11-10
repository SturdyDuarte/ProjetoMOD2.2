/*Coloquei mais valores pois não tinha lida que tem que ter ao menos 3 INSERTS para cada tabela*/

INSERT INTO Planta (IdPlanta, NomeCientifico, NomeComum, Tipo) 
VALUES 
(NULL, 'Coriandrum sativum', 'Coentro', 'Tempero'),
(NULL, 'Beta vulgaris', 'Beterraba', 'Raiz');

/* Canteiro 1 (Original) */
INSERT INTO Canteiro (IdCanteiro, Nome, Localizacao, Largura, Comprimento, Altura) 
VALUES 
(NULL, 'Canteiro Bloco A', 'Área Leste - Bloco A', 1.20, 5.00, 0.30);

/* Canteiro 2 (Original) */
INSERT INTO Canteiro (IdCanteiro, Nome, Localizacao, Largura, Comprimento, Altura) 
VALUES 
(NULL, 'Horta do Pátio', 'Área Norte - Pátio', 1.00, 3.50, 0.40);

/* Canteiro 3 (Segundo Bloco) */
INSERT INTO Canteiro (IdCanteiro, Nome, Localizacao, Largura, Comprimento, Altura) 
VALUES 
(NULL, 'Canteiro Ginásio', 'Área Sul - Ginásio', 0.80, 4.00, 0.25);

/* Canteiro 4 (Segundo Bloco) */
INSERT INTO Canteiro (IdCanteiro, Nome, Localizacao, Largura, Comprimento, Altura) 
VALUES 
(NULL, 'Canteiro Bloco B', 'Área Oeste - Bloco B', 1.00, 6.00, 0.30);

INSERT INTO Instituicao (IdInstituicao, Nome, CEP, Numero, Telefone, Complemento) 
VALUES 
(NULL, 'Orfanato Luz do Saber', '53030-030', 88, '(81) 3444-5555', 'Muro amarelo'),
(NULL, 'Centro Comunitário Juntos', '54040-040', 700, '(81) 3666-7777', 'Ao lado da padaria');

INSERT INTO Cultivo (IdCultivo, IdVoluntario, IdCanteiro, IdPlanta, DataCultivo) 
VALUES 
(NULL, 3, 3, 4, '2025-09-10'),
(NULL, 4, 4, 5, '2025-09-12');

INSERT INTO Colheita (IdColheita, IdCanteiro, IdPlanta, Data, Quantidade) 
VALUES 
(NULL, 3, 4, '2025-10-25', '30 maços'),
(NULL, 4, 5, '2025-11-20', '10.2 kg');

INSERT INTO Doacao (IdDoacao, IdColheita, IdInstituicao, DataDoacao, QuantidadeDoada) 
VALUES 
(NULL, 3, 3, '2025-10-26', '15 maços'),
(NULL, 4, 4, '2025-11-21', '10.0 kg');