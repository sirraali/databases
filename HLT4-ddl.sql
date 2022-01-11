drop database if exists learning;
create database learning;
use learning;

/*Manager*/
create table if not exists Manager(uid int primary key, uname varchar(100), shift varchar(100), salary double);
create table if not exists Item(uid int AUTO_INCREMENT, dish varchar(100), price double, category varchar(100), PRIMARY KEY (uid));
create table if not exists Orders(uid int AUTO_INCREMENT PRIMARY KEY, iuid int, FOREIGN KEY (iuid) REFERENCES Item(uid), uname varchar(100), phone varchar(100), address varchar(100),quantity int, odate Date);

insert into Manager(uid,uname,shift,salary) values(101,"John","Morning",57.84);
insert into Manager(uid,uname,shift,salary) values(102,"Bilal","Afternoon",57.84);
insert into Manager(uid,uname,shift,salary) values(103,"Mary","Full Day",115.68);
insert into Manager(uid,uname,shift,salary) values(104,"Faatimah","Morning",57.84);
insert into Manager(uid,uname,shift,salary) values(105,"Eddy","Afternoon",57.84);
insert into Manager(uid,uname,shift,salary) values(106,"Isa","Full Day",115.68);
insert into Manager(uid,uname,shift,salary) values(107,"Emily","Morning",57.84);
insert into Manager(uid,uname,shift,salary) values(108,"Josephine","Afternoon",57.84);
insert into Manager(uid,uname,shift,salary) values(109,"Sirra","Full Day",115.68);
insert into Manager(uid,uname,shift,salary) values(1010,"Ameer","Morning",57.84);

/*Items*/
insert into Item(uid, dish, price, category) values(1, "Cheese & Onion Sandwich", 2.75, "Sandwiches");
insert into Item(uid, dish, price, category) values(2, "Chicken Sandwich", 4.75, "Sandwiches");
insert into Item(uid, dish, price, category) values(3, "Piri-Piri Sandwich", 4.75, "Sandwiches");
insert into Item(uid, dish, price, category) values(4, "Continential Breakfast", 3.50, "Breakfast");
insert into Item(uid, dish, price, category) values(5, "Oriental Breakfast", 7.60, "Breakfast");
insert into Item(uid, dish, price, category) values(6, "Mediterranean Roasted Vegetables", 4.75, "Vegetarian");
insert into Item(uid, dish, price, category) values(7, "Falafel Wrap", 4.00, "Vegetarian");
insert into Item(uid, dish, price, category) values(8, "Orange Juice 12oz", 4.10, "Beverage");
insert into Item(uid, dish, price, category) values(9, "Chocolate Milkshakev12oz", 4.95, "Beverage");
insert into Item(uid, dish, price, category) values(10, "Espresso - single",2.10, "Beverage");
insert into Item(uid, dish, price, category) values(11, "Capuccino", 3.10, "Beverage");
insert into Item(uid, dish, price, category) values(12, "Capuccino", 3.10, "Beverage");

/*Orders*/

insert into Orders(uid, uname, phone, address, iuid, quantity, odate) values(202, "George", 07712345678, "Birminghham", 5, 6, '2021-06-02');

insert into Orders(uid, uname, phone, address, iuid, quantity, odate) values(203, "Adam", 01325689520, "Bristol", 3, 2, '2021-05-02');

insert into Orders(uid, uname, phone, address, iuid, quantity, odate) values(204, "Sheila", 01220988725, "Sheffield", 7, 10, '2021-12-05');
insert into Orders(uid, uname, phone, address, iuid, quantity, odate) values(206, "Loise", 01217701578, "Slough", 11, 1, '2021-12-05');
insert into Orders(uid, uname, phone, address, iuid, quantity, odate) values(2010, "Terry", 01254123456, "Scotland", 1, 20, '2021-12-05');
insert into Orders(uid, uname, phone, address, iuid, quantity, odate) values(2012, "Zaynab", 07812309123, "Liverpool", 7, 98, '2021-12-05');
insert into Orders(uid, uname, phone, address, iuid, quantity, odate) values(2013, "Zayn",07701128490, "Hayes", 8, 3, '2021-12-05');

insert into Orders(uid, uname, phone, address, iuid, quantity, odate) values(208, "Ibrahim", 07822008154, "London", 6, 3, '2021-12-06');
insert into Orders(uid, uname, phone, address, iuid, quantity, odate) values(209, "Zahra", 01274021678 , "London", 9, 5, '2021-12-06');
insert into Orders(uid, uname, phone, address, iuid, quantity, odate) values(2011, "Amy", 01496091256, "Newcastle", 2, 50, '2021-12-06');

insert into Orders(uid, uname, phone, address, iuid, quantity, odate) values(205, "Amy", 07788993366, "Eccles", 10, 3, '2021-12-12');
insert into Orders(uid, uname, phone, address, iuid, quantity, odate) values(207, "Amina", 012550987654, "Edinbrough", 4, 13, '2021-12-12');


