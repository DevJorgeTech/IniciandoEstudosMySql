-- update realiza mudanças de valor nas tabelas

-- update "tabela"
update estados

-- Mudança que será feita 
-- Nesse caso um dado da coluna "Nome" será modificado para "Maranhão"

set nome = "Maranhão"

-- Update SEMPRE deve ter Where se não toda a tabela será alterada

WHERE sigla = 'MA'

-- Nesse caso um dado da coluna "Nome" será modificado para "Maranhão" onde a sigla seja 'MA'

update estados
set nome = "Paraná", populacao = 11.32
Where sigla = "PR"

SELECT nome, populacao from estados WHERE sigla = "PR" 
