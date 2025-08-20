# 🐬 MySQL Generation  

Este repositório contém diversos **scripts SQL** criados durante os estudos de **Banco de Dados MySQL** no programa **Generation Brasil**.  
O objetivo é praticar **modelagem de dados**, **criação de tabelas**, **relacionamentos** e **consultas SQL** utilizando diferentes cenários do mundo real.  

---

## 📂 Estrutura do Repositório  

### 🥬 Quitanda (`quitanda.sql` e `quitanda_aula02.sql`)  
Modelagem de um sistema para uma quitanda, com produtos, categorias e operações como inserções, filtros, joins e agregações.  

📌 **Conceitos aplicados:**  
- Criação de tabelas  
- `ALTER TABLE` (adicionar/remover/alterar colunas)  
- Operadores (`=`, `!=`, `>`, `<`, `BETWEEN`, `LIKE`, `IN`)  
- **INNER JOIN, LEFT JOIN, RIGHT JOIN**  
- Funções de agregação (`COUNT`, `SUM`, `AVG`, `MAX`, `MIN`)  

---

### 🍕 Pizzaria (`pizzaria.sql`)  
Sistema para gerenciar pedidos, pizzas e categorias em uma pizzaria.  

📌 **Conceitos aplicados:**  
- Criação de tabelas com **chaves estrangeiras**  
- Inserção de dados  
- Relacionamentos **1:N** (categoria → pizza)  
- Consultas com `JOIN`  
- Agregação de dados  

---

### 🏢 RH (`rh.sql`)  
Banco de dados para o setor de Recursos Humanos, armazenando colaboradores com dados de salário, idade, cargo e setor.  

📌 **Conceitos aplicados:**  
- Criação de tabelas  
- Inserções de registros  
- Atualização de dados com `UPDATE`  
- Consultas com **condições lógicas** (`>=`, `<=`)  

---

### 🏫 Escola (`Escola.sql`)  
Modelagem de uma escola com alunos, notas e atributos educacionais.  

📌 **Conceitos aplicados:**  
- Criação de tabela de alunos  
- Inserções de registros  
- Consultas condicionais  
- Uso de `UPDATE` para alteração de dados  

---

### 🛒 E-commerce (`Ecommerce.sql`)  
Simulação de um banco de dados para uma loja virtual, incluindo produtos, categorias e manipulação de registros.  

📌 **Conceitos aplicados:**  
- Criação de tabelas  
- Relacionamentos com **chaves estrangeiras**  
- Inserções múltiplas  
- Consultas com filtros e ordenações  

---

### 🎓 Cursos (`cursos.sql`)  
Banco de dados para gerenciar cursos, áreas de estudo e alunos inscritos.  

📌 **Conceitos aplicados:**  
- Criação de tabelas de cursos e categorias  
- Relacionamentos via **chave estrangeira**  
- Inserções de dados  
- Consultas com `JOIN`  

---

## ⚙️ Tecnologias Utilizadas  
- **MySQL 8.0+**  
- **Workbench** para modelagem e execução dos scripts  

---

## 🚀 Como usar  
Clone o repositório e importe os arquivos `.sql` no MySQL Workbench ou via terminal:  

```bash
# Clonar repositório
git clone https://github.com/iagozandone/MySQL-Generation.git

# Acessar pasta
cd MySQL-Generation

# Importar no MySQL (exemplo com quitanda.sql)
mysql -u root -p < quitanda.sql
```

## 📞 Contato

Desenvolvido por Iago Zandone.

* [GitHub](https://github.com/iagozandone)
* [LinkedIn](https://www.linkedin.com/in/iagozandone)
* [Portfólio Pessoal](https://iagozandone.github.io/portfolio_fundweb/)

