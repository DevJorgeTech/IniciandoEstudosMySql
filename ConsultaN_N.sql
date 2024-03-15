select e.nome_empresas, c.nome
from empresas e, empresas_unidades eu, cidades c
where e.id_empresas = c.id_cidade and c.id_cidade = eu.id_cidade
and sede