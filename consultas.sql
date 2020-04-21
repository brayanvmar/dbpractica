/* basicas */ 
SELECT * from socios;

SELECT TOP 3 * from socios;

Select * from socios
LIMIT;

SELECT id_socio,num_socio,id_cliente from socio;

Select DISTINCT fecha,num_socio from renta;
/* Intermedio */ 
Select * from cliente 
where id_cliente = '2598';

Select * from cliente 
where id_cliente = '3598' and nombre= 'brayan';

Select * from pelicula 
where id_espera='1' or id_espera='2';

Select * from cliente
where not id_cliente='3';


select * from cliente
where not id_cliente='2' and not id_cliente='3';

select * from renta 
order by num_cinta DESC;
/* avanzado */

select cliente.nombre,socio.id_cliente
from cliente
inner join cliente on cliente.nombre = socio.id_cliente;

select renta.num_socio, pelicula.id_renta
from renta
left join pelicula
on renta.id_renta= pelicula.id_pelicula
order by cliente.nombre;

select socio.num_socio, cliente.nombre,cliente.apaterno
from socio
right join cliente
on socio.id_socio = cliente.id_cliente
order by socio.num_socio;





