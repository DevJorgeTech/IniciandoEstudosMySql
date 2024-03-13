-- unsigned == Sem Sinal
-- auto_increment == Sem nenhum valor for informado será gerado um valor int++
-- unique == Não aceita repetição de valores


create table estados(
    id int unsigned not null auto_increment,
    nome varchar(45) not null,
    sigla varchar(2) not null,
    regiao ENUM("Norte","Nordeste","Centro-oeste","Sudeste", "Sul") not null,
    populacao Decimal(5,2) not null,
    primary key (id),
     -- Chave primária
    unique key (nome),
    unique key (sigla)

)

insert into estados (nome, sigla, regiao, populacao)
values 
("Acre","AC","Norte",0.83),
('Alagoas','AL','Nordeste',0.8),
('Amazonas','AM','Norte',4.6);

-- Inseridos vários dados de uma vez
-- Obrigatório finalzar o comando com ;

insert into estados (id, nome, sigla, regiao, populacao)
values 
(1000,"Novo","NV","Norte",0.21),
(1001, 'NovoA','NA','Nordeste',0.8);

select * from estados