create table empresas(
    id_empresas int unsigned not null auto_increment,
    nome_empresas varchar(255) not null,
    cnpj int unsigned,
    primary key (id_empresas),
    unique key (cnpj)
);

create table empresas_unidades(
    id_empresas int unsigned not null,
    id_cidade int unsigned not null,
    sede tinyint(1) not null,

    primary key (id_empresas, id_cidade)
);

insert into empresas (nome_empresas, cnpj)
values
    ('Bradesco', 95694186000132),
    ('Vale', 27887148000146),
    ('Cielo', 01598317000134);

-- Alterando o valor de uma coluna

alter table empresas modify cnpj varchar(14)

-- Verificando o conteúdo da tabela

desc empresas;


--==========================================

select * from empresas;
select * from cidades;

insert into empresas_unidades
    (id_empresas, id_cidade, sede)
values 
    (1,1,1),
    (1,2,0),
    (2,1,0),
    (2,2,1);