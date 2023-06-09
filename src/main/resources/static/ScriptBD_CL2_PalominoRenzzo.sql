create database ec2_palomino
use ec2_palomino

create table tb_supervisor
(
cod_supervisor int primary key auto_increment,
nom_supervisor varchar(25),
ape_supervisor varchar(25),

dni_supervisor int,
num_hijos int,

sueldo double,
cod_sucursal int
);

create table tb_sucursal
(
cod_sucursal int primary key auto_increment,
nom_sucursal VARCHAR(25)
);

alter table tb_supervisor add constraint FK01 foreign key(cod_sucursal) references tb_sucursal(cod_sucursal);


insert into tb_sucursal values(null,'Llantas y Rencauches S.A'),(null,'Finca el Injerto'),(null,'Café San Lucas');
	select*from tb_sucursal;
insert into tb_supervisor values(null,'Renzzo Omar','Palomino de la Vega',73966439,2,1025.5,4),
								(null,'Abel David','Oscuro Huauya',78978987,1,1350.6,5),
                                (null,'Javier David','Palomino de la Vega',76666766,0,2450.3,4),
                                (null,'Nilton','Huayta Arias',78888123,4,3500.3,6)
	select*from tb_supervisor
