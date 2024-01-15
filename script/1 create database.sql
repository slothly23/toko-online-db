-- membuat database
create database toko_online_db;

-- membuat tabel Category
create table Category(
    id int not null primary key auto_increment,
    name varchar(50) not null
);

