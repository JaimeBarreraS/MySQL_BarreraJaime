 create database Jaime_Pais; -- crear base de datos
 
 use Jaime_Pais; -- utilizar base de datos
 -- drop table Pais;
 
 create table Pais (
 id int primary key not null,
 nombre varchar(20) not null,
 continente varchar(50) not null,
 poblacion int not null
 ); -- Creación Tabla País
 
 create table Ciudad (
 id int primary key not null,
 nombre varchar(50) not null,
 id_pais int not null,
 foreign key(id_pais) references Pais(id)
 );
 
 create table Idioma (
 id int primary key not null,
 idioma varchar(50)
 );
 
 create table idioma_pais (
 id_idioma int not null,
 id_pais int not null,
 es_oficial tinyint(1),
 primary key (id_idioma,id_pais),
 foreign key (id_idioma) references Idioma(id),
 foreign key (id_pais) references Pais(id)
 );
 
 describe idioma_pais; -- Describe tabla
 show tables;
 
 insert into Idioma (id,idioma) values (1, 'Español');
 
 insert into Idioma (id,idioma) values (2, 'Inglés'), (3, 'Francés');
 
 select * from Idioma;
 
 insert into Pais (id,nombre,continente,poblacion)
 values 
(1, 'México', 'América', 126000000),
(2, 'Estados Unidos', 'América', 331000000),
(3, 'Francia', 'Europa', 67000000),
(4, 'Canadá', 'América', 38000000),
(5, 'Colombia', 'América', 55000000);

 insert into Ciudad (id,nombre,id_pais)
 values 
(1, 'Bogotá', 5),
(2, 'Ciudad de México', 1),
(3, 'Medellin', 5 ),
(4, 'Dallas', 2),
(5, 'Nueva York', 2),
(6, 'Houston', 2),
(7, 'Niza', 3 ),
(8, 'Burdeos', 3),
(9, 'Toronto', 4 ),
(10, 'Vancouver', 4 ),
(11, 'Tijuana', 1),
(12, 'Cancun', 1);

-- Inserciones de Idiomas oficiales

-- Español es el lenguaje oficial de México
-- Ingles no es el lenguaje oficial de México
-- Frances no es el lenguaje oficial de México
insert into idioma_pais (id_idioma,id_pais,es_oficial) values (1,1,1),(2,1,0),(3,1,0);

-- Español es el lenguaje oficial de EEUU
-- Ingles no es el lenguaje oficial de EEUU
-- Frances no es el lenguaje oficial de EEUU
insert into idioma_pais (id_idioma,id_pais,es_oficial) values (1,2,0),(2,2,1),(3,2,0);

-- Español es el lenguaje oficial de Colombia
-- Ingles no es el lenguaje oficial de Colombia
-- Frances no es el lenguaje oficial de Colombia
insert into idioma_pais (id_idioma,id_pais,es_oficial) values (1,5,1),(2,5,0),(3,5,0);

-- Español es el lenguaje oficial de Canada
-- Ingles no es el lenguaje oficial de Canada
-- Frances no es el lenguaje oficial de Canada
insert into idioma_pais (id_idioma,id_pais,es_oficial) values (1,4,0),(2,4,1),(3,4,0);

-- Español es el lenguaje oficial de Canada
-- Ingles no es el lenguaje oficial de Canada
-- Frances no es el lenguaje oficial de Canada
insert into idioma_pais (id_idioma,id_pais,es_oficial) values (1,3,0),(2,3,0),(3,3,1);

-- Consultas

-- 1. listar todos los idiomas
select * from Idioma;
select idioma from Idioma;

-- 2. listar el idioma con ID 1
select * from Idioma where id=1; 
select idioma from Idioma where id=1;
 
-- 3. consultar los paises que estén en América
select nombre from Pais where continente='América'; 
select * from Pais where continente='América'; 
select nombre as NombrePais from Pais where continente='América'; 

-- SUBCONSULTAS

-- 4. Subconsulta que encuentre los idiomas oficial
select idioma from Idioma where id in (select id_idioma from idioma_pais where es_oficial=1) 
 