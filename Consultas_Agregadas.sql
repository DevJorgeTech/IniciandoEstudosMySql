-- Modificando consultas

select
    regiao as "Região",
    sum(populacao) as Total

    -- sum() Representa uma função de soma

    from estados
    GROUP BY regiao
    -- Agrupa dados de uma certa coluna neste caso regiao
    -- Sem o group by o resultado seria a soma de todas as populações
    -- Com o gruop by o resultado será a soma das populações POR região
    order by Total desc;


select sum(populacao) from estados

-- Mostra o valor total da população

select
    avg(populacao) as Total
    -- avg() Representa uma função de Média
    -- Mostra a média da população por região
    from estados
