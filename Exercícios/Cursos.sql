CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,              
    descricao VARCHAR(500),                 
    carga_horaria INT NOT NULL,              
    preco DECIMAL(8,2) NOT NULL,            
    tb_categorias_id BIGINT,                 
    FOREIGN KEY (tb_categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_cursos (nome, descricao, carga_horaria, preco, tb_categorias_id) VALUES
('Java Web Completo', 'Aprenda a desenvolver aplicações web com Java, Spring e Hibernate.', 40, 1999.90, 1),  -- Programação
('Design Gráfico Avançado', 'Curso completo de design gráfico, do básico ao avançado.', 50, 2499.90, 2),  -- Design
('Marketing Digital para Iniciantes', 'Entenda as principais estratégias de marketing digital para negócios iniciantes.', 30, 997.90, 3),  -- Marketing
('Gestão Empresarial', 'Curso completo sobre gestão de negócios e liderança.', 60, 789.90, 4),  -- Negócios
('Análise de Dados com Python', 'Aprenda a usar Python para análise e visualização de dados.', 40, 628.90, 5),  -- Data Science
('Curso de Photoshop', 'Aprenda a utilizar o Photoshop para criar designs incríveis.', 40, 1059.90, 2),  -- Design
('SEO para Iniciantes', 'Entenda como otimizar sites para os motores de busca e gerar tráfego.', 35, 1799.90, 3),  -- Marketing
('Big Data para Negócios', 'Curso sobre como usar Big Data para otimização de processos empresariais.', 45, 2239.90, 5);  -- Data Science

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,              
    descricao VARCHAR(255)                  
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Programação', 'Cursos focados em aprendizado de linguagens de programação como Java, Python, JavaScript, etc.'),
('Design', 'Cursos sobre design gráfico, UX/UI, Photoshop, Illustrator, entre outros.'),
('Marketing', 'Cursos sobre estratégias de marketing digital, SEO, redes sociais, etc.'),
('Negócios', 'Cursos de administração, gestão empresarial, finanças, etc.'),
('Data Science', 'Cursos sobre análise de dados, machine learning, Big Data, etc.');

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT tb_cursos.nome AS nome_cursos, tb_categorias.nome AS categoria_nome
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.tb_categorias_id = tb_categorias.id
WHERE tb_cursos.nome LIKE '%j%';

SELECT tb_cursos.nome AS nome_cursos, tb_categorias.nome AS categoria_nome
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.tb_categorias_id = tb_categorias.id;

SELECT tb_cursos.nome AS nome_cursos, tb_categorias.nome AS categoria_nome
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.tb_categorias_id = tb_categorias.id
WHERE tb_categorias.nome = 'Marketing';
