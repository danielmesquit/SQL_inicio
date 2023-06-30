CREATE DATABASE Escola;

USE Escola;

CREATE TABLE  Aluno(
	Nome varchar(50),
    Matricula int,
    Curso varchar(50),
    Idade int,
    Sexo ENUM('M','F'),
    Nota float
);

#drop table Aluno;

CREATE TABLE  Aluno(
	Nome varchar(50) not null,
    Matricula int primary key auto_increment,
    Curso varchar(50),
    Idade int,
    Sexo ENUM('M','F'),
    Nota float
);

select * from aluno;

insert into 
	Aluno(Nome,Curso,Idade,Sexo,nota)
values(
	"Daniel","DevFullStack",28,"M",9.99
);

select * from aluno;

alter table
	Aluno
add column
	Turno enum('M','T','N');
    
select * from aluno;

alter table
	aluno
Drop Column
	turno;

alter table
	Aluno
add column
	Turno enum('M','T','N')not null;
    
rename table aluno to estudante;
    
select * from estudante;

alter table
	Estudante
modify
	nota int;

update
	estudante
set
	nota = 9
where
	matricula = 1;

select * from estudante;

alter table
	estudante
drop column
	turno;

insert into 
	Estudante(Curso,Idade,Sexo,nota)
values(
	"Python",17,"F",7
);

update estudante
set nome = "Pedro"
where matricula = 2;

update estudante
set 
idade = 30,
curso = "Javascript"
where matricula = 2;

delete from estudante where matricula = 2;

#truncate table estudante; -- limpa a tabela

# -------------------------------------------------- #

-- Adicione 10 alunos dentro da tabela 'Aluno'
insert into 
	estudante(Nome,curso,idade,sexo,nota)
values(
	'carlos','Front End',40,'M',10
);
select * from estudante;

-- Altere o curso do aluno com matrícula 5 para DS
Update
	estudante
set 
	curso = "DS"
where
	matricula = 5;

-- Delete os dados dos aluno de matricula 10
delete from estudante where matricula = 10;

-- Ordene as notas dos alunos de maior ate a menor
select * from estudante order by nota desc;

# --------------------------------------------------------------------#
-- crie a tabela banco de dados
create table funcionario(
	Código int primary key auto_increment,
	Nome varchar(50) not null,
    Setor varchar(20) not null,
    Salário decimal(10,2) not null
);

-- Insira 10 registros sendo os setores: TI, Manutenção, Financeiro e RH
insert into 
	funcionario(Nome, Setor,Salário)
Values(
	"Angela","RH",3600.00
);

select * from funcionario;

update funcionario
set	
	Setor = 'Manutenção'
where 
	Código = 6;
	
-- Pegue o maior e menor salário existente
select max(salário), min(salário) from funcionario;

select * from funcionario order by salário desc limit 1;

-- Altere o salário do empregado com código 3 para 5000
update funcionario
set 
	salário = 5000.00
where
	Código = 3;

-- Média geral dos salários
select avg(salário) from funcionario;

-- Ordene os empregados por ordem alfabética
select * from funcionario order by nome;

-- Conte quantos empregados exitem por setor
select
	setor,count(setor) as Quantidade
from 
	funcionario
group by
	setor;
    
select
	setor,
    count(setor) as Quantidade,
    max(salário) as MaiorSalário,
    round(avg(salário),2) as MédiaSalarial,
    min(salário) as Menor
from
	funcionario
group by
	setor;
   
select * from funcionario












