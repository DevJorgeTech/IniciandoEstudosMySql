-- Como o update o comando delete sempre deve estar acompanhado com Where
-- Sem o uso de where a tabela inteira será excluida!

DELETE  FROM estados 
WHERE id >= 1000

select * from `estados`