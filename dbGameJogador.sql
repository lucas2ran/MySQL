CREATE DATABASE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
Defensivo VARCHAR(255),
Ofensivo VARCHAR(255),
Camisa INT,
PRIMARY KEY (id)
);

-- Dados da tabela tb_classes
INSERT INTO tb_classes (Defensivo, Camisa)
VALUES ("Goleiro",12);

INSERT INTO tb_classes (Defensivo, Camisa)
VALUES ("Lateral",23);

INSERT INTO tb_classes (Defensivo, Camisa)
VALUES ("Zaguerio",4);

INSERT INTO tb_classes (Defensivo, Camisa)
VALUES ("Zagueiro",31);

INSERT INTO tb_classes (Defensivo, Camisa)
VALUES ("Lateral",6);

INSERT INTO tb_classes (Defensivo, Camisa)
VALUES ("Volante",29);

INSERT INTO tb_classes (Ofensivo, Camisa)
VALUES ("Volante",5);

INSERT INTO tb_classes (Ofensivo, Camisa)
VALUES ("Meia",20);

INSERT INTO tb_classes (Ofensivo, Camisa)
VALUES ("Meia",8);

INSERT INTO tb_classes (Ofensivo, Camisa)
VALUES ("Atacante",10);

INSERT INTO tb_classes (Ofensivo, Camisa)
VALUES ("CentroCA",9);

SELECT * FROM tb_classes;

CREATE TABLE tb_jogadores(
id BIGINT AUTO_INCREMENT,
Nome VARCHAR(255) NOT NULL,
Idade INT,
CidNatal VARCHAR(255),
Defesa DECIMAL(5,0),
Ataque DECIMAL(5,0),
Classes_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (Classes_id) REFERENCES tb_classes(id)
);

-- Dados da tabela tb_jogadores
INSERT INTO tb_jogadores (Nome, Idade, CidNatal, Defesa, Ataque, Classes_id)
VALUES ("Cássio",35,"Porto Alegre",4000,1000,1);

INSERT INTO tb_jogadores (Nome, Idade, CidNatal, Defesa, Ataque, Classes_id)
VALUES ("Fágner",36,"Campo Grande",3800,3000,2);

INSERT INTO tb_jogadores (Nome, Idade, CidNatal, Defesa, Ataque, Classes_id)
VALUES ("Gil",35,"Campos dos Goytacazes",3200,2200,3);

INSERT INTO tb_jogadores (Nome, Idade, CidNatal, Defesa, Ataque, Classes_id)
VALUES ("Balbuena",33,"Cidade do leste",3300,2300,4);

INSERT INTO tb_jogadores (Nome, Idade, CidNatal, Defesa, Ataque, Classes_id)
VALUES ("Fábio Santos",37,"São Paulo",3700,2700,5);

INSERT INTO tb_jogadores (Nome, Idade, CidNatal, Defesa, Ataque, Classes_id)
VALUES ("Roni",24,"São Paulo",3100,2750,6);

INSERT INTO tb_jogadores (Nome, Idade, CidNatal, Defesa, Ataque, Classes_id)
VALUES ("Fausto Vera",23,"Hurlingham",3500,3200,7);

INSERT INTO tb_jogadores (Nome, Idade, CidNatal, Defesa, Ataque, Classes_id)
VALUES ("Giuliano",34,"Curitiba",2700,3800,8);

INSERT INTO tb_jogadores (Nome, Idade, CidNatal, Defesa, Ataque, Classes_id)
VALUES ("Renato Augusto",36,"Rio de Janeiro",2900,5000,9);

INSERT INTO tb_jogadores (Nome, Idade, CidNatal, Defesa, Ataque, Classes_id)
VALUES ("Róger Guedes",25,"Ibirubá",2500,4850,10);

INSERT INTO tb_jogadores (Nome, Idade, CidNatal, Defesa, Ataque, Classes_id)
VALUES ("Yuri Alberto",23,"São José dos Campos",2400,4950,11);

SELECT * FROM tb_jogadores;

SELECT * FROM tb_jogadores WHERE Ataque > 2000;

SELECT * FROM tb_jogadores WHERE Defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_jogadores WHERE Nome LIKE "%c%";

SELECT * FROM tb_jogadores INNER JOIN tb_classes
ON tb_jogadores.Classes_id = tb_classes.id;

SELECT * FROM tb_jogadores INNER JOIN tb_classes
ON tb_jogadores.Classes_id = tb_classes.id
WHERE tb_classes.id=9;