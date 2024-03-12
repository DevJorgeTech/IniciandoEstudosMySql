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


-- as altera temporariamente o nome de um coluna neste caso da coluna "Nome"

SELECT sigla, nome as "Nome do Estado" from estados WHERE regiao = "Sul"

-- order by ordena uma coluna de várias maneiras por padrão é do menor para o maior

SELECT sigla, nome as "Nome do Estado" from estados WHERE populacao >= 10 order by populacao

-- desc no final de order by "Coluna" fará que a ordenação seja do maior para o menor

SELECT sigla, nome as "Nome do Estado" from estados WHERE populacao >= 10 order by populacao desc


