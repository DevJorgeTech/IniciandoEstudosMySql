create table prefeitos(
    id int unsigned not null AUTO_INCREMENT,
    nome varchar(255) not null,
    id_cidade int unsigned,
    primary key (id),
    unique key (id_cidade),
    foreign key (id_cidade) references `cidades` (id_cidade)
)

insert into prefeitos
    (nome, id_cidade)
values
    ("Rodrigo Neves", 2),
    ("Raquel Lyra", 3),
    ("Zenaldo Coutinho", null);

insert into prefeitos
    (nome, id_cidade)
values
    ("Rafael Greca", null);
