Insert INTO cliente (id_cliente,nombre,apaterno,amaterno,direccion,telefono) VALUES ('2598','Juan carlos','Martinez','diaz','ticoman','7736493012');
Insert INTO cliente (id_cliente,nombre,apaterno,amaterno,direccion,telefono) VALUES ('3598','Brayan','Marquez','Vargas','Aragon','7789676633');
Insert INTO cliente (id_cliente,nombre,apaterno,amaterno,direccion,telefono) VALUES ('7898','Ricardo','Garnica','Perez','Ctm Aragon','7767896542');

Insert INTO socio (id_socio,num_socio,id_cliente) VALUES ('1','7821','2598');
Insert INTO socio (id_socio,num_socio,id_cliente) VALUES ('2','3045','3598');
Insert INTO socio (id_socio,num_socio,id_cliente) VALUES ('3','7821','7898');

Insert INTO renta(id_renta,num_socio,fecha,num_cinta) VALUES ('1','1','20/04/20','1');
Insert INTO renta(id_renta,num_socio,fecha,num_cinta) VALUES ('2','2','20/04/20','2');
Insert INTO renta(id_renta,num_socio,fecha,num_cinta) VALUES ('3','3','20/04/20','3');

Insert INTO espera (id_espera,id_pelicula,id_socio,id_status,id_cliente) VALUES('1','1','1','1',"2598");
Insert INTO espera (id_espera,id_pelicula,id_socio,id_status,id_cliente) VALUES('2','2','2','1',"3598");
Insert INTO espera (id_espera,id_pelicula,id_socio,id_status,id_cliente) VALUES('3','3','3','1',"7898");

Insert INTO pelicula(id_pelicula,titulo,genero,director,actor,id_renta) VALUES('1','rapido y furioso','acción','Gary Scott', 'Vin Diesel','1');
Insert INTO pelicula(id_pelicula,titulo,genero,director,actor,id_renta) VALUES('2','Harry potter','ficcion','J. K. Rowling', 'Harry','2');
Insert INTO pelicula(id_pelicula,titulo,genero,director,actor,id_renta) VALUES('3','se busca','Accion','Timur Bekmambetov', 'Angelina','3');

Update cliente set nombre='Bernardo'
where id_cliente ='2598'
Update pelicula set titulo= '+rapido+furioso' 
where id_pelicula='1'

Delete from cliente 
where id_cliente="7898"
Delete from socio 
where id_socio='3'
