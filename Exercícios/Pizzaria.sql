CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,    
    nome VARCHAR(255) NOT NULL,              
    preco DECIMAL(8,2) NOT NULL,             
    descricao VARCHAR(500),                  
    tb_categorias_id BIGINT,                 
    FOREIGN KEY (tb_categorias_id) REFERENCES tb_categorias(id)  
);

INSERT INTO tb_pizzas (nome, preco, descricao, tb_categorias_id) VALUES
('Pizza de Chocolate', 49.99, 'Pizza doce com cobertura de chocolate', 1),
('Pizza de Frutas', 59.90, 'Pizza doce com frutas frescas', 1),
('Pizza Calabresa', 35.90, 'Pizza salgada com calabresa e cebola', 2),
('Pizza de Mussarela', 39.90, 'Pizza salgada com queijo mussarela', 2),
('Pizza Vegana de Legumes', 45.00, 'Pizza vegana com legumes grelhados', 3),
('Pizza Vegana de Abobrinha', 47.50, 'Pizza vegana com abobrinha e cogumelos', 3),
('Pizza Vegetariana de Cogumelos', 55.00, 'Pizza vegetariana com cogumelos e queijo', 4),
('Pizza Especial de Frutos do Mar', 89.90, 'Pizza especial com frutos do mar e molho especial', 5);


CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY, 
nome VARCHAR(255) NOT NULL,            
descricao VARCHAR(500)                 
);
INSERT INTO tb_categorias (nome, descricao) VALUES
('Doce', 'Pizzas com sabores doces como chocolate e frutas'),
('Salgada', 'Pizzas com sabores salgados tradicionais'),
('Vegana', 'Pizzas sem ingredientes de origem animal'),
('Vegetariana', 'Pizzas com ingredientes vegetais'),
('Especial', 'Pizzas com combinações exclusivas de ingredientes');

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%m%';

SELECT tb_pizzas.nome AS pizza_nome, tb_categorias.nome AS categoria_nome 
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.tb_categorias_id = tb_categorias.id;

SELECT tb_pizzas.nome AS pizza_nome, tb_categorias.nome AS categoria_nome 
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.tb_categorias_id = tb_categorias.id
WHERE tb_categorias.nome = 'Doce';
