CREATE DATABASE posts;

\c posts;

CREATE TABLE posts(
   id SERIAL PRIMARY KEY, nombre_de_usuario VARCHAR(30),
   fecha_de_creacion DATE,
    contenido VARCHAR(50),
     descripcion VARCHAR(50)
);

SELECT * FROM posts;

INSERT INTO posts 
(nombre_de_usuario, fecha_de_creacion, contenido, descripcion)
VALUES('pamela', '2021-01-21', 'la mujer', 'mujer del siglo xxi');
--INSERT 0 1

INSERT INTO posts 
(nombre_de_usuario, fecha_de_creacion, contenido, descripcion)
 VALUES('pamela', '2021-01-21', 'outfit', 'mujer moderna');
--INSERT 0 1

INSERT INTO posts 
(nombre_de_usuario, fecha_de_creacion, contenido, descripcion)
 VALUES('carlos', '2021-01-21', 'outfit', 'hombre moderno');
--INSERT 0 1

ALTER TABLE posts ADD titulo VARCHAR(30);
--agrego columna titulo

UPDATE posts SET titulo='desafio1' WHERE nombre_de_usuario='pamela';
UPDATE posts SET titulo='desafio2' WHERE nombre_de_usuario='carlos';
--agrego titulos

SELECT * FROM posts;
--reviso tabla

INSERT INTO posts 
(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo)
 VALUES('pedro', '2021-01-21', 'informatica', 'informatica moderna', 'desafio1');
--INSERT O 1

INSERT INTO posts 
(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo)
 VALUES('pedro', '2021-01-21', 'informatica', 'informatica nivel dios', 'desafio1');
--INSERT O 1

DELETE FROM posts WHERE id='3';
--DELETE 1

SELECT * FROM posts;
--reviso tabla

INSERT INTO posts 
(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo)
 VALUES('crlos', '2021-01-21', 'outfit 2021', 'tendencias', 'desafio1');
--INSERT O 1

CREATE TABLE comentarios(
   id SERIAL, 
   id_posts INT REFERENCES posts(id), 
   hora_creacion TIME,
   contenido VARCHAR(50)
);

INSERT INTO comentarios (id_posts, Hora_creacion, contenido)
 VALUES ('23:55:05', '1', 'larga vida a Pamela'),
 ('23:56:55', '1', 'pamela grande');
--INSERT O 2 

INSERT INTO comentarios (id_posts, Hora_creacion, contenido)
 VALUES ('21:40:05', '7', 'larga vida a carlos'),
 ('21:56:55', '7', 'carlos grande'),('22:56:55', '7', 'carlos djdjjd'),
 ('23:56:55', '7', 'carlos gordo');

--INSERT O 4

INSERT INTO posts 
(nombre_de_usuario, fecha_de_creacion, contenido, descripcion)
VALUES('margarita', '2021-01-21', 'la mujer', 'mujer del siglo xxi');
--INSERT 0 1

INSERT INTO comentarios (id_posts, Hora_creacion, contenido)
 VALUES ('23:59:05', '8', 'larga vida'),
 ('23:56:55', '8', 'pamela grande'),('20:56:55', '8', 'grande'),
 ('20:30:55', '8', 'jajjaja'),('19:56:55', '8', 'hahhah');



