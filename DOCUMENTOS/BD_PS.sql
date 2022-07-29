drop database trenes;
create database trenes;
use trenes;



CREATE TABLE usuario(
    id INT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(255),
    apellido VARCHAR(255),
    dni INT,
    telefono INT,
    mail VARCHAR(255),
    direccion VARCHAR(255),
    edad INT,
    password VARCHAR(255),
	constraint PK_USER primary key(id)
);


CREATE TABLE turnos(
    id INT UNSIGNED AUTO_INCREMENT,
    Especialidad VARCHAR(255),
    Nom_prof VARCHAR(255) ,
    fecha INT,
    hora INT,
    comentario VARCHAR(255),
    consultorio INT,
	constraint PK_TURNO primary key(id)
);

CREATE TABLE asignacion(
    id INT UNSIGNED AUTO_INCREMENT,
    id_U INT UNSIGNED,
    id_T INT UNSIGNED,
    usu_nom VARCHAR(255),
    usu_ape VARCHAR(255),
    turn_esp VARCHAR(255),
    turn_fecha DATE,
    turn_hora TIME,
    turn_consul INT,
	constraint PK_AS PRIMARY KEY(id),
	constraint FK_AU FOREIGN KEY(id_U) references usuario(id),
	constraint FK_TU FOREIGN KEY(id_T) references turnos(id)
);


