CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT NOT NULL,
    valor DECIMAL(8 , 2 ),
    descricao VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO tb_produtos (nome, quantidade, valor, descricao, categoria) VALUES
("Smartphone Galaxy S22", 10, 3999.90, "Celular com câmera tripla e 5G", "Celulares"),
("Smartphone iPhone 13", 8, 4599.00, "Apple iPhone 13 com 128GB", "Celulares"),
("Carregador Turbo USB-C", 50, 89.90, "Carregamento rápido 25W", "Acessórios"),
("Fone de Ouvido Bluetooth", 40, 149.99, "Som estéreo com cancelamento de ruído", "Acessórios"),
("Película de Vidro 5D", 100, 29.90, "Proteção extra para tela", "Acessórios"),
("Capa Antishock iPhone 13", 60, 59.90, "Capa resistente a quedas", "Acessórios"),
("Suporte Veicular Magnético", 30, 39.90, "Ideal para GPS no carro", "Acessórios"),
("Caixa de Som Bluetooth", 20, 249.99, "Alto-falante portátil com graves potentes", "Acessórios"),
("Power Bank 20.000mAh", 25, 189.90, "Carregue até 4 vezes o celular", "Acessórios"),
("Smartwatch Série 7", 12, 599.00, "Monitoramento cardíaco e notificações", "Acessórios");

SELECT * FROM tb_produtos WHERE valor >= 500;

SELECT * FROM tb_produtos WHERE valor <= 500;

UPDATE tb_produtos SET valor = 589.87 WHERE id = 4;

