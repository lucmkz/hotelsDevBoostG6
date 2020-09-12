-- Criação de tabelas --

create table hotels (
    id int primary key auto_increment,
    nome varchar (255) not null,
    descricao varchar(255) not null,
    endereco varchar (255) not null,
    cidade varchar (255) not null,
    estrelas int not null,
    foto_url varchar (255) not null
);

create table rooms (
    id int primary key auto_increment,
    hotel_id int not null,
    tamanho varchar(255) not null,
    numero int not null,
    constraint fk_hotel_id
      foreign key (hotel_id) references hotels(id)
);

create table reservations (
    id int primary key auto_increment,
    room_id int not null,
    checkin datetime not null,
    checkout datetime not null,
    createdAt datetime not null    ,
    constraint fk_room_id
      foreign key (room_id) references rooms (id)
);

-- Criação dos registros de hoteis --
insert into hotels (nome, descricao, endereco, cidade, estrelas, foto_url) values ('Bates', 'Novo Hotel', 'Rua Lucas Duarte - 111', 'São Paulo', 5, 'images/bates.png');
insert into hotels (nome, descricao, endereco, cidade, estrelas, foto_url) values ('Ibis', 'Hotel', 'Rua Fabiano Lanzoni - 25', 'São Paulo', 5, 'images/ibis.png');
insert into hotels (nome, descricao, endereco, cidade, estrelas, foto_url) values ('Guess', 'Hotel e Motel', 'Rua Messias - 218', 'São Paulo', 5, 'images/bates.png');

-- Criação dos registros de quartos --
insert into rooms (hotel_id, tamanho, numero) values (1, 'Casal', 13);
insert into rooms (hotel_id, tamanho, numero) values (2, 'Solteiro', 21 );
insert into rooms (hotel_id, tamanho, numero) values (3, 'Casal', 16);

-- Criação dos registros de reservas --
insert into reservations (room_id, checkin, checkout, createdAt) values (1, '2020-09-12', '2020-09-14', CURDATE() );
insert into reservations (room_id, checkin, checkout, createdAt) values (2, '2020-12-24', '2020-12-31', CURDATE() );
insert into reservations (room_id, checkin, checkout, createdAt) values (3, '2020-09-17', '2020-09-25', CURDATE() );
