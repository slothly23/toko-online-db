-- membuat database
create database toko_online_db;

-- membuat tabel Category
create table Category(
    id int not null primary key auto_increment,
    name varchar(50) not null
);

-- menambahkan 10 data kategori ke tabel Category
insert into category (name)
values ('Elektronik');
insert into category (name)
values ('Sepatu');
insert into category (name)
values ('Perlengkapan Rumah');
insert into category (name)
values ('Pakaian Perempuan');
insert into category (name)
values ('Aksesori');
insert into category (name)
values ('Jam Tangan');
insert into category (name)
values ('Otomotif');
insert into category (name)
values ('Kesehatan');
insert into category (name)
values ('Pakaian Bayi');
insert into category (name)
values ('Tas');