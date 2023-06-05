show databases;

create database db_mecanica_senai;

use db_mecanica_senai;

create table tbl_aluno (
	   id int not null auto_increment primary key,
       nome varchar(150) not null,
       data_nascimento date not null,
       foto varchar(150),
       
	   unique index(id)
);

create table tbl_horario (
	   id int not null auto_increment primary key,
       inicio datetime not null,
       termino datetime not null,
       liquido time not null,
       desconto time,
       observacao text,
       
       unique index(id)
);

create table tbl_criterio (
	   id int not null auto_increment primary key,
       nome varchar(45) not null,
       
       unique index(id)
);

create table tbl_tipo_usuario (
	   id int not null auto_increment primary key,
       nome varchar(45) not null,
       
       unique index(id)
);

create table tbl_tipo_materia (
	   id int not null auto_increment primary key,
       nome varchar(100) not null,
       sigla varchar(20) not null,
       carga_horaria float not null,
       descricao text not null,
       
       unique index(id)
);

create table tbl_curso (
	   id int not null auto_increment primary key,
       nome varchar(100) not null,
       sigla varchar(20) not null,
       carga_horaria float not null,
       descricao text not null,
       
       unique index(id)
);

create table tbl_periodo (
	   id int not null auto_increment primary key,
       nome varchar(45) not null,
       
       unique index(id)
);

desc tbl_periodo;

create table tbl_turma (
	   id int not null auto_increment primary key,
       nome varchar(45) not null,
       sigla varchar(15) not null,
       id_periodo int not null,
       id_curso int not null,
       
       constraint FK_Periodo_Turma
       foreign key(id_periodo)
       references tbl_periodo(id),
       
	   constraint FK_Curso_Turma
       foreign key(id_curso)
       references tbl_curso(id),
       
       unique index(id)
);

desc tbl_turma;

create table tbl_usuario (
	   id int not null auto_increment primary key,
       email varchar(255) not null,
       senha varchar(45) not null,
       id_tipo_usuario int not null,
       
       constraint FK_TipoUsuario_Usuario
       foreign key(id_tipo_usuario)
       references tbl_tipo_usuario(id),
       
       unique index(id)
);

desc tbl_usuario;

show tables;