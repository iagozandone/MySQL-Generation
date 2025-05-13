-- Apagar Banco de Dados db_quitanda
DROP DATABASE db_quitanda;
 
-- Recriar o Banco de dados db_quitanda
CREATE DATABASE db_quitanda02;
 
-- Selecionar o Banco de Dados db_quitanda
USE db_quitanda;
 
-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);
 
-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (descricao)
VALUES ("Frutas");
 
INSERT INTO tb_categorias (descricao)
VALUES ("Verduras");
 
INSERT INTO tb_categorias (descricao)
VALUES ("Legumes");
 
INSERT INTO tb_categorias (descricao)
VALUES ("Temperos");
 
 
INSERT INTO tb_categorias (descricao)
VALUES ("Ovos");
 
INSERT INTO tb_categorias (descricao)
VALUES ("outros");
 
-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;
 
-- Criar a Tabela tb_produtos
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT, 
dtvalidade DATE NULL,
preco DECIMAL(6, 2),
categoria_id BIGINT, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);
 
-- Insere dados na tabela tb_produtos
INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Maçã", 1000, "2022-03-07", 1.99, 1);
 
INSERT INTO Tb_produtos (nOme, Quantidade, Dtvalidade, Preco, Categoria_id)
VALUES ("Banana", 1300, "2022-03-08", 5.00, 1);
 
INSERT INTO Tb_produtos (nOme, Quantidade, Dtvalidade, Preco, Categoria_id)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);
 
INSERT INTO Tb_produtos (nOme, Quantidade, Dtvalidade, Preco, Categoria_id)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);
 
INSERT INTO Tb_produtos (nOme, Quantidade, Dtvalidade, Preco, Categoria_id)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);
 
INSERT INTO Tb_produtos(nOme, Quantidade, Dtvalidade, Preco, Categoria_id)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);
 
INSERT INTO Tb_produtos(nOme, Quantidade, Dtvalidade, Preco, Categoria_id)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);
 
INSERT INTO TB_produtos(noMe, qUantidade, dTvalidade, pReco, cAtegoria_id)
VALUES("CEnoura", 1800, "2022-03-09", 3.50, 3);
 
INSERT INTO TB_produtos (noMe, qUantidade, dTvalidade, pReco, cAtegoria_id)
VALUES ("PImenta", 1100, "2022-03-15", 10.00, 4);
 
INSERT INTO TB_produtos (noMe, qUantidade, dTvalidade, pReco, cAtegoria_id)
VALUES ("ALecrim", 130, "2022-03-10", 5.00, 4);
 
INSERT INTO TB_produtos (noMe, qUantidade, dTvalidade, pReco, cAtegoria_id)
VALUES ("MAnga", 200, "2022-03-07", 5.49, 1);
 
INSERT INTO TB_produtos (noMe, qUantidade, dTvalidade, pReco, cAtegoria_id)
VALUES ("LAranja", 3000, "2022-03-13", 10.00, 1);
 
INSERT INTO TB_produtos (noMe, qUantidade, dTvalidade, pReco, cAtegoria_id)
VALUES ("COuve", 100, "2022-03-12", 1.50, 2);
 
INSERT INTO TB_produtos(noMe, qUantidade, dTvalidade, pReco, cAtegoria_id)
VALUES("TOmate", 1105, "2022-03-15", 3.00, 3);
 
INSERT INTO TB_produtos(noMe, qUantidade, dTvalidade, pReco, cAtegoria_id)
VALUES("RAbanete", 1200, "2022-03-15", 13.00, 3);
 
INSERT INTO TB_produtos(noMe, qUantidade, pReco)
VALUES("SAcola Cinza", 1118, 0.50);
 
INSERT INTO TB_produtos(noMe, qUantidade, pReco)
VALUES("SAcola Verde", 1118, 0.50);
 
-- Visualiza todos os dados da tabela tb_produtos
SELECT * FROM TB_produtos;
 
-- Visualizar todos os dados ordenados em ordem alfabética pelo nome
SELECT * FROM TB_produtos ORDER BY nome;
 
-- Visualizar todos os dados ordenados em ordem alfabética pelo nome de forma decrescente
SELECT * FROM TB_Produtos ORDER BY nome, preCo DESC;
 
-- Visualiza todos os produtos menor o id = 1
SELECT * FROM TB_Produtos WHERE NOT categoria_id = 1;
 
-- Visualizar somente os produtos que estiverem dentro do IN
SELECT * FROM TB_Produtos WHERE PRECo IN(5, 10, 15);
 
-- Visualiza conforme o intervalo de 5 e 15
SELECT * FROM TB_Produtos WHERE dtvalidade BETWEEN '2022-03-10' AND '2022-03-15' ORDER BY dtvalidade, nome;

-- Visualiza qualquer produto que tenha no inicio, meio ou fim da palavra o "RA"
SELECT * FROM TB_Produtos WHERE nome LIKE "%ra%";

-- Visualiza qualquer produto que tenha no inicio da palavra o "RA"
SELECT * FROM TB_Produtos WHERE nome LIKE "%ra";

-- Visualiza qualquer produto que tenha no fim da palavra o "RA"
SELECT * FROM TB_Produtos WHERE nome LIKE "ra%";

SELECT @@collation_database;

SELECT COUNT(*) FROM TB_Produtos;

SELECT COUNT(categoria_id) FROM TB_Produtos;

SELECT SUM(preco) AS soma_preco FROM TB_Produtos;

SELECT AVG(preco) AS media_preco FROM TB_Produtos;

SELECT categoria_id, CONCAT("R$", FORMAT(AVG(preco), 2, "pt-BR")) AS media_preco FROM TB_Produtos GROUP BY categoria_id;

SELECT nome, DATE_FORMAT(dtvalidade, "%d/%m/%Y") AS data_validade FROM tb_produtos;

SELECT MAX(preco) AS preco_maximo FROM TB_Produtos;

SELECT MIN(preco) AS preco_minimo FROM TB_Produtos;

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Abobrinha", 2000, "2025-05-31", 15.00, 3);

-- Inner Join
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_categorias;

-- LEFT Join
SELECT * FROM tb_produtos LEFT JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;
 
 -- RIGHT Join
SELECT * FROM tb_produtos RIGHT JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;


-- Calculo do prço médio agrupado por categoria
SELECT tb_categorias.descricao,AVG(preco) AS media_preco 
FROM TB_Produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
GROUP BY tb_categorias.descricao
HAVING media_preco > 5 ;