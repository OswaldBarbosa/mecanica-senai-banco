show databases;

create database db_mecanica_senai;

use db_mecanica_senai;

create table tbl_aluno (
	   id int not null auto_increment primary key,
       nome varchar(150) not null,
       data_nascimento date not null,
       
	   unique index(id)
);

desc tbl_aluno;

create table tbl_usuario_tipo (
	   id int not null auto_increment primary key,
       nome varchar(45) not null,
       
       unique index(id)
);

desc tbl_usuario_tipo;

create table tbl_usuario (
	   id int not null auto_increment primary key,
       email varchar(255) not null,
       senha varchar(255) not null,
       id_usuario_tipo int not null,
       
       constraint FK_UsuarioTipo_Usuario
       foreign key(id_usuario_tipo)
       references tbl_usuario_tipo(id),
       
       unique index(id)
);

desc tbl_usuario;

create table tbl_horario (
	   id int not null auto_increment primary key,
       inicio datetime not null,
       termino datetime not null,
       liquido time not null,
       desconto time,
       observacao text,
       
       unique index(id)
);

desc tbl_horario;

create table tbl_criterio_tipo (
	   id int not null auto_increment primary key,
       nome varchar(300) not null,
       
       unique index(id)
);

desc tbl_criterio_tipo;

create table tbl_criterio (
	   id int not null auto_increment primary key,
       nome varchar(300) not null,
       observacao text,
       id_criterio_tipo int not null,
       
       constraint FK_CriterioTipo_Criterio
       foreign key(id_criterio_tipo)
       references tbl_criterio_tipo(id),
       
       unique index(id)
);

desc tbl_criterio;

create table tbl_tipo_usuario (
	   id int not null auto_increment primary key,
       nome varchar(45) not null,
       
       unique index(id)
);

desc tbl_tipo_usuario;

create table tbl_materia (
	   id int not null auto_increment primary key,
       nome varchar(100) not null,
       sigla varchar(20) not null,
       carga_horaria float not null,
       descricao text not null,
       
       unique index(id)
);

desc tbl_materia;	

create table tbl_curso (
	   id int not null auto_increment primary key,
       nome varchar(100) not null,
       sigla varchar(20) not null,
       carga_horaria float not null,
       descricao text not null,
       
       unique index(id)
);

desc tbl_curso;	

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

show tables;