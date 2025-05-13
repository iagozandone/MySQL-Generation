CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    salario DECIMAL(8 , 2 ),
    cargo VARCHAR(255) NOT NULL,
    setor VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO tb_colaboradores (nome, idade, salario, cargo, setor) VALUES
("Felipe Miranda", 32, 3330.58, "Operador de Máquina", "Produção"),
("Mariana Souza", 29, 1980.00, "Assistente de RH", "Recursos Humanos"),
("Carlos Eduardo", 41, 4200.75, "Supervisor de Logística", "Logística"),
("Ana Beatriz", 26, 1850.00, "Recepcionista", "Administrativo"),
("João Vitor", 35, 2800.00, "Analista de Sistemas", "TI"),
("Luciana Rocha", 38, 3100.90, "Coordenadora Financeira", "Financeiro"),
("Rafael Mendes", 22, 1700.00, "Estagiário de Marketing", "Marketing"),
("Patrícia Lima", 45, 3650.20, "Gerente de Produção", "Produção"),
("Thiago Silva", 31, 2100.00, "Técnico em Segurança", "Segurança do Trabalho"),
("Juliana Andrade", 27, 1950.00, "Auxiliar Administrativo", "Administrativo");

SELECT * FROM tb_colaboradores WHERE salario >= 2000;

SELECT * FROM tb_colaboradores WHERE salario <= 2000;

UPDATE tb_colaboradores SET salario = 2050.59 WHERE id = 10;


