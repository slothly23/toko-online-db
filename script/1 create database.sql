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

-- tampilkan semua dari tabel category
select * from category;

-- membuat tabel product
create table Product(
    id int not null primary key auto_increment,
    name varchar(50) not null,
    description varchar(255),
	price Decimal(9,3),
	stock int,
	category_id int,
	foreign key (category_id) references category(id)
);

-- menambahkan data kategori ke tabel Product
INSERT INTO Product (name, description, price, stock, category_id)
VALUES ('Tas kulit coklat', 'Tas elegan berbahan kulit', 100000, 10, 14);
INSERT INTO Product (name, description, price, stock, category_id)
VALUES ('Tas kulit hitam', 'Tas elegan berbahan kulit', 100000, 8, 14);
INSERT INTO Product (name, description, price, stock, category_id)
VALUES ('Tas ransel coklat', 'Tas ransel kuat', 80000, 100, 14);
INSERT INTO Product (name, description, price, stock, category_id)
VALUES ('Baju bayi motif kaktus', 'cocok untuk bayi usia 0-6 bulan', 50000, 200, 13);
INSERT INTO Product (name, description, price, stock, category_id)
VALUES ('Kacamata hitam 2000', 'Kacamata hitam gagang kuat', 150000, 30, 8);
INSERT INTO Product (name, description, price, stock, category_id)
VALUES ('Sepatu pink elegan', 'Sepatu elegan', 120000, 100, 5);
INSERT INTO Product (name, description, price, stock, category_id)
VALUES ('Sepatu ungu elegan', 'Sepatu elegan', 120000, 10, 5);
INSERT INTO Product (name, description, price, stock, category_id)
VALUES ('Gamis katun lembut', 'Gamis berbahan katun', 120000, 10, 7);
INSERT INTO Product (name, description, price, stock, category_id)
VALUES ('Gamis katun corak lembut', 'Gamis berbahan katun', 170000, 60, 7);
INSERT INTO Product (name, description, price, stock, category_id)
VALUES ('kerudung pasmina abu', 'kerudung pasmina', 30000, 108, 7);