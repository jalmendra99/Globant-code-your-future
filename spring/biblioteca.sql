-- drop database libreria;

-- siguiente comando crea una base con charset utf8
-- para que se tomen los acentos, ñ, etc..
CREATE DATABASE libreria CHARACTER SET utf8mb4;
drop table AUTOR;
drop table EDITORIAL;
drop table LIBRO;

use libreria;

insert into AUTOR (ALTA, NOMBRE) values (true, 'juan');



