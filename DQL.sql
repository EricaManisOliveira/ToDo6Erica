use todo_erica;


SELECT 
    valorProd
FROM
    produto
ORDER BY valorProd DESC
LIMIT 3;


SELECT 
    nomeCliente as Cliente, COUNT(avaliacao.idCliente) AS Qtdade_de_Avaliacoes_Feitas
FROM
    clientes
        INNER JOIN
    avaliacao ON avaliacao.idCliente = clientes.idCliente
GROUP BY avaliacao.idCliente;


SELECT 
    nomeProduto, AVG(avaliacao.notaAvaliacao) AS NotaMedia
FROM
    produto
        INNER JOIN
    avaliacao ON avaliacao.idProd = produto.idProd
GROUP BY avaliacao.idProd;


SELECT 
    nomeProduto as Produto, MAX(avaliacao.dataAvaliacao) AS Avaliacao_Mais_Recente
FROM
    produto
        INNER JOIN
    avaliacao ON avaliacao.idProd = produto.idProd
GROUP BY avaliacao.idProd
ORDER BY avaliacao.dataAvaliacao desc;


SELECT 
    nomeCliente
FROM
    clientes
WHERE
    nomeCliente LIKE 'Joana%';


    SELECT 
    nomeProduto as Produto, MIN(avaliacao.notaAvaliacao) AS Nota_Mais_Baixa
FROM
    produto
        INNER JOIN
    avaliacao ON avaliacao.idProd = produto.idProd
ORDER BY avaliacao.notaAvaliacao;


SELECT 
    avaliacao.dataAvaliacao AS Data_Avaliacao,
    DATE_FORMAT(dataAvaliacao, 'data desatualizada') AS Status_Avaliacao,
    produto.nomeProduto AS Produto
FROM
    avaliacao
        INNER JOIN
    produto ON produto.idProd = avaliacao.idProd
WHERE
    dataAvaliacao <= NOW() - INTERVAL 30 DAY
GROUP BY avaliacao.idProd;

