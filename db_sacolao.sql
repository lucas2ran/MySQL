CREATE DATABASE db_sacolao;

USE db_sacolao;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
Nome VARCHAR(255) NOT NULL,
Quantidade INT,
DtValidade DATE NULL,
Preço DECIMAL(6,2),
Categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (Categoria_id) REFERENCES tb_categorias(id)
);

