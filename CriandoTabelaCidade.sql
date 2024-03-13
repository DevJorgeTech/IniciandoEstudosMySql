create table if not exists cidades(
    id_cidade int unsigned not null AUTO_INCREMENT,
    nome varchar(255) not null,
    estado_id int unsigned not null,
    area decimal(10,2),
    primary key(id_cidade),
    foreign key (estado_id) references estados(id)
) 

-- foreign key representa a coluna id da tabela `estados` criando um relacionamento 1 X M
-- A coluna estado_id da tabela Cidades é correspondente a coluna id da tabela "Estado"

insert into cidades (nome, area, estado_id)
values 
("Campinas",795, 25),
("Niterói",133.9, 19);

select * from cidades

insert into cidades (nome, area, estado_id)
values (
    'Caruaru',
    920.6,
    (select id from `estados` WHERE sigla = 'PE')
    -- Coleta o id especifico da tabela estado
)

insert into cidades (nome, area, estado_id)
values (
    'Juazeiro do Norte',
    248.2,
    (select id from `estados` WHERE sigla = 'CE')
    -- Coleta o id especifico da tabela estado
)