create database JaimeT2; 

use JaimeT2;

create table vehiculos(
VIN INT NOT NULL,
Modelo varchar(50) null,
Marca varchar(50) null,
Estado varchar(50) null,
Color varchar(50) null,
Año int null,
Precio int null,
Tipo_combustible varchar(50) null,
Tipo_transmision varchar(50) null,
primary key(VIN));

create table clientes(
ID INT NOT NULL,
Modelo varchar(50) null,
Marca varchar(50) null,
Estado varchar(50) null,
Color varchar(50) null,
Año int null,
Precio int null,
Tipo_combustible varchar(50) null,
Tipo_transmision varchar(50) null,
primary key(VIN));


