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

-- membuat tabel customer
CREATE TABLE Customer (
    id int not null primary key auto_increment,
    name varchar(50) not null,
    email varchar(50),
	_password varchar(50),
	phone varchar(14),
	adress varchar(255),
	city varchar(50)
);

-- menambahkan data ke tabel customer
INSERT INTO Customer (name, email, _password, phone, adress, city)
VALUES ('kinan', 'kinan@gmail.com', '13hw5', '081256790999', "jalan abc no 1", "Bandung");
INSERT INTO Customer (name, email, _password, phone, adress, city)
VALUES ('ani', 'ani@gmail.com', 'ui3hw5', '0812567906767', "jalan abc no 1", "Jakarta Utara");
INSERT INTO Customer (name, email, _password, phone, adress, city)
VALUES ('ana', 'ana@gmail.com', 'jlhui3hw5', '081256790690', "jalan abc no 8", "Depok");

-- membuat tabel cart
CREATE TABLE Cart(
    id int not null primary key auto_increment,
    order_number int not null,
    order_date date,
	total_price decimal(9,3),
	customer_id int,
	foreign key (customer_id) references customer(id)
);

-- menambahkan data ke tabel cart
INSERT INTO Cart (order_number, order_date, total_price, customer_id)
VALUES (1, '2023-12-05', 50000, 1);
INSERT INTO Cart (order_number, order_date, total_price, customer_id)
VALUES (2, '2023-12-05', 100000, 1);
INSERT INTO Cart (order_number, order_date, total_price, customer_id)
VALUES (1, '2023-12-07', 50000, 2);
INSERT INTO Cart (order_number, order_date, total_price, customer_id)
VALUES (1, '2023-12-09', 80000, 3);

-- membuat tabel order_details
CREATE TABLE Order_details(
    id int not null primary key auto_increment,
    product_id int,
    product_quantity int,
	product_price decimal(9,3),
	order_id int,
	sub_total decimal(9,3),
	foreign key (product_id) references Product(id),
	foreign key (order_id) references Cart(id)
);

-- menambahkan data ke tabel Order_details
INSERT INTO Order_details (product_id, product_quantity, product_price, order_id, sub_total)
VALUES (4, , 80000, 3);
