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

-- Inserindo todos os estados Brasileiros
INSERT INTO estados (nome, sigla, regiao, populacao) VALUES 
('Amapá', 'AP', 'Norte', 0.86),
('Bahia', 'BA', 'Nordeste', 14.87),
('Ceará', 'CE', 'Nordeste', 9.13),
('Distrito Federal', 'DF', 'Centro-oeste', 3.11),
('Espírito Santo', 'ES', 'Sudeste', 4.06),
('Goiás', 'GO', 'Centro-oeste', 7.02),
('Maranhão', 'MA', 'Nordeste', 7.08),
('Mato Grosso', 'MT', 'Centro-oeste', 3.53),
('Mato Grosso do Sul', 'MS', 'Centro-oeste', 2.78),
('Minas Gerais', 'MG', 'Sudeste', 21.29),
('Pará', 'PA', 'Norte', 8.69),
('Paraíba', 'PB', 'Nordeste', 4.04),
('Paraná', 'PR', 'Sul', 11.35),
('Pernambuco', 'PE', 'Nordeste', 9.62),
('Piauí', 'PI', 'Nordeste', 3.28),
('Rio de Janeiro', 'RJ', 'Sudeste', 17.47),
('Rio Grande do Norte', 'RN', 'Nordeste', 3.53),
('Rio Grande do Sul', 'RS', 'Sul', 11.29),
('Rondônia', 'RO', 'Norte', 1.79),
('Roraima', 'RR', 'Norte', 0.63),
('Santa Catarina', 'SC', 'Sul', 7.28),
('São Paulo', 'SP', 'Sudeste', 46.29),
('Sergipe', 'SE', 'Nordeste', 2.32),
('Tocantins', 'TO', 'Norte', 1.57);

SELECT * FROM estados