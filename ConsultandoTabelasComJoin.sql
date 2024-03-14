select
    cidades.nome as Cidade,
    estados.nome as Estado,
    regiao as Região
from estados
inner join cidades on estados.id = cidades.estado_id

-- inner join faz junção de tabelas
-- Neste caso está sendo solicitado as colunas cidades.nome, estados.nome e regiao da tabela ESTADOS
-- apenas inclua as linhas onde o id do estado é igual ao estado_id da cidade 

-- Tipos de Join

-- inner Join - Só retorna elementos que estão relacionados (primary key e foreign key)

select * from cidades inner join prefeitos on cidades.id_cidade = prefeitos.id_cidade;

-- Retorna todas as colunas da tabela cidades onde o id_cidade for é ao id do prefeito

-- left Join - Retorna elementos da tabela da "Esquerda" no caso cidades onde o id_cidade for é ao id do prefeito
-- e ainda retorna o restante das cidades

select * from cidades left join prefeitos on cidades.id_cidade = prefeitos.id_cidade;

-- right join - Retorna a mesma coisa do left join só que da tabela da direita no caso prefeitos

select * from cidades right join prefeitos on cidades.id_cidade = prefeitos.id_cidade;

-- full join - retorna tudo de cidades e prefeitos

select * from cidades left join prefeitos on cidades.id_cidade = prefeitos.id_cidade
union
select * from cidades right join prefeitos on cidades.id_cidade = prefeitos.id_cidade;




