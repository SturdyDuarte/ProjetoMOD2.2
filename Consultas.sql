/*1*/
SELECT 
    Nome AS 'Voluntário',
    Funcao AS 'Função'
FROM 
    Voluntario
ORDER BY 
    Nome;

/*2*/
SELECT 
    c.Nome AS 'Nome Canteiro',
    p.NomeComum AS 'Planta Cultivada',
    cu.DataCultivo AS 'Data do Plantio'
FROM 
    Cultivo AS cu
INNER JOIN 
    Canteiro AS c ON cu.IdCanteiro = c.IdCanteiro
INNER JOIN 
    Planta AS p ON cu.IdPlanta = p.IdPlanta
ORDER BY 
    c.Nome, cu.DataCultivo;
    
/*3*/
SELECT 
    v.Nome AS 'Nome Voluntário',
    p.NomeComum AS 'Planta Cultivada'
FROM 
    Cultivo AS cu
INNER JOIN 
    Voluntario AS v ON cu.IdVoluntario = v.IdVoluntario
INNER JOIN 
    Planta AS p ON cu.IdPlanta = p.IdPlanta
ORDER BY 
    v.Nome, p.NomeComum;
    
/*4*/
SELECT 
    c.Nome AS 'Nome Canteiro',
    co.Quantidade AS 'Quantidade Colhida'
FROM 
    Colheita AS co
INNER JOIN 
    Canteiro AS c ON co.IdCanteiro = c.IdCanteiro
ORDER BY 
    c.Nome;
    
/*5*/

SELECT 
    i.Nome AS 'Nome da Instituição',
    d.QuantidadeDoada AS 'Quantidade Doada',
    d.DataDoacao AS 'Data da Doação'
FROM 
    Doacao AS d
INNER JOIN 
    Instituicao AS i ON d.IdInstituicao = i.IdInstituicao
ORDER BY 
    i.Nome, d.DataDoacao;
    
/*6*/

SELECT
    i.Nome AS 'Instituição',
    SUM(CAST(SUBSTRING_INDEX(d.QuantidadeDoada, ' ', 1) AS DECIMAL(10, 2))) AS 'Total (Kg)',
    'kg' AS 'Unidade'
FROM
    Doacao AS d
JOIN
    Instituicao AS i ON d.IdInstituicao = i.IdInstituicao
WHERE
    d.QuantidadeDoada LIKE '%kg%'
GROUP BY
    i.Nome
ORDER BY
    i.Nome;
    
/*7 mostre os canteiros que não tiveram colheitas ( use left join )

NULO, POIS TODOS TIVERAM COLHEITAS
*/

INSERT INTO Canteiro (IdCanteiro, Nome, Localizacao, Largura, Comprimento, Altura) 
VALUES 
(NULL, 'Canteiro de Teste', 'Fundos', 1.0, 1.0, 1.0);


SELECT 
    c.Nome AS 'Canteiro Sem Colheita',
    c.Localizacao
FROM 
    Canteiro AS c
LEFT JOIN 
    Colheita AS co ON c.IdCanteiro = co.IdCanteiro
WHERE 
    co.IdColheita IS NULL;

/*8
exiba o voluntário que realizou o maior número de cultivos (use count e order by)
*/


SELECT 
    v.Nome AS 'Voluntário',
    COUNT(cu.IdCultivo) AS 'Total de Cultivos'
FROM 
    Voluntario AS v
JOIN 
    Cultivo AS cu ON v.IdVoluntario = cu.IdVoluntario
GROUP BY 
    v.IdVoluntario, v.Nome
ORDER BY 
    'Total de Cultivos' DESC
LIMIT 1;

/*9
Plantas que ainda não foram colhidas
*/

SELECT 
    p.NomeComum AS 'Planta Não Colhida',
    p.NomeCientifico,
    p.Tipo
FROM 
    Planta AS p
LEFT JOIN 
    Colheita AS co ON p.IdPlanta = co.IdPlanta
WHERE 
    co.IdColheita IS NULL;
    
/*10
liste todas as doações realizadas em setembro de 2025, com o nome da instituição e a data da doação

nulo, pois todas as doações foram realizadas a partir de outubro
*/

SELECT 
    i.Nome AS 'Nome da Instituição',
    d.DataDoacao AS 'Data da Doação'
FROM 
    Doacao AS d
JOIN 
    Instituicao AS i ON d.IdInstituicao = i.IdInstituicao
WHERE 
    d.DataDoacao BETWEEN '2025-10-01' AND '2025-10-30'
ORDER BY 
    d.DataDoacao;