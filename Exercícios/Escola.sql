CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
    matricula BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    serie INT NOT NULL,
    nota DECIMAL(4 , 2 ),
    dtnascimento DATE NOT NULL,
    PRIMARY KEY (matricula)
);

INSERT INTO tb_estudantes (nome, serie, nota, dtnascimento) VALUE
("Ana Beatriz", 9, 8.50, '2009-04-12'),
("Lucas Silva", 8, 6.75, '2010-10-23'),
("Mariana Rocha", 7, 9.20, '2011-01-18'),
("Felipe Souza", 9, 5.90, '2009-07-30'),
("Bruno Oliveira", 6, 7.00, '2012-11-05'),
("Lívia Fernandes", 8, 4.80, '2010-03-15'),
("Gustavo Lima", 7, 7.95, '2011-09-22'),
("Isabela Castro", 6, 3.60, '2012-06-08'),
("Pedro Henrique", 9, 8.10, '2009-12-19'),
("Carolina Dias", 7, 6.20, '2011-08-03');

SELECT * FROM tb_estudantes WHERE nota >= 7.0 ;

SELECT * FROM tb_estudantes WHERE nota <= 7.0; 

UPDATE tb_estudantes SET nota = 10 WHERE matricula = 8;


