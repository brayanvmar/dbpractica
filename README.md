#  Video Club

* Se desea diseñar una base de datos relacional que almacene la información sobre los prestamos de las peliculas de un video club.
En la actualidad la gestión de esta información se lleva a cabo del siguiente modo: Cuando se hace un préstamo se rellena una ficha en la que se anota el socio que se llava la pelicula, la fecha y el numero de la cienta que se lleva, que es un único. Esta ficha se deposita en el archivador de peliculas prestadas. Cuando el socio devuelve la cinta, la ficha se pasa al archivador de peliculas devueltas. El video club tiene además un archivador con de peliculas ordenadas por titulo; cada fica tiene además el género de la pelicula, su director y los nombres de los actores que intervienen. También se tiene un archivador con las fichas de los socios, ordenadas por el código que video club les da cuando les hace el carné; cada ficha tiene el nombre del socio, su dirección y telefono, los nombres de sus directores favoritos, los nombres de sus actores favoritos y los géneros cinematógraficos de su preferencia. Cuando un socio quiere tomar prestada una pelicula de la que no hay copias disponibles, se comprueba si hay alguien en la lista de espera de esa pelicula. Cada vez que se devuelve una pelicula, se comprueba si alguien esta en la lista de espera y si es así se le llama por telefono al primer socio de la lista para decirle que la puede pasar a recoger, borrándolo de la lista de espera. 
___

## Justificación

Se realizará la base de datos tomando en cuenta todo lo que menciona el video club, ya que esto es lo que necesita para hacer más eficiente su trabajo, ya que con la base de datos todo se debe agilizar.

# DATABASE  
    CREATE DATABASE IF NOT EXISTS videoclub;

# Tablas:
CREATE TABLE IF NOT EXISTS cliente(     
id_cliente int NOT NULL;    
nombre varchar(20); 
apaterno varchar(20);   
amaterno varchar(20;    
direccion varchar(30);  
telefono varchar(13);   
PRIMARY KEY(id_cliente) 
)Engine = InnoDB DEFAULT charset=latin1;

CREATE TABLE IF NOT EXISTS socio(   
  id_socio varchar(10);     
num_socio varchar(10);  
PRIMARY KEY (num_socio))  
REFERENCES cliente(id_cliente);

CREATE TABLE IF NOT EXISTS renta(   
  id_renta int NOT NULL;    
num_socio;  
fecha varchar(10);  
num_cinta int(10);  
)PRIMARY KEY (id_renta) REFERENCES socio(num_socio);

CREATE TABLE IF NOT EXISTS espera(  
  id_espera int NOT NULL;   
id_pelicula int(10);    
id_socio;   
id_status varchar(10);      
)PRIMARY KEY(id_espera) REFERENCES cliente(id_cliente);

CREATE TABLE IF NOT EXISTS pelicula(    
  id_pelicula int NOT NULL;     
  titulo varchar(20);   
genero varchar(20);     
director varchar(20);   
actor varchar (20);     
)PRIMARY KEY(id_pelicula) REFERENCES renta(id_renta);
___
# Diccionario de datos

* clientes

| campo | dominio | tipo de dato |  
| :---: | :-----: | :----------: |
| id_cliente | numero cliente| int auto|
|nombre| nombre de cliente| varchar|
|apaterno|apellido paterno| varchar|
|amaterno| apellido materno| varchar|
|direccion| direccion de cliente| varchar|
|telefono| telefono de cliente| varchar|

* socio

| campo | dominio | tipo de dato |
| :---: | :-----: | :----------: |
|id_socio| numero de socio auto|varchar|
|num_socio|numero de socio|varchar|

* renta

| campo | dominio | tipo de dato |
| :---: | :-----: | :----------: |
|id_renta|numero de renta auto| int not null|
|num_socio|numero del socio| varchar|
|fecha| fecha de renta| varchar|
|num_cinta| numero de cinta|int|

* espera

| campo | dominio | tipo de dato |
| :---: | :-----: | :----------: |
|id_espera| numero de espera| int not null|
|id_pelicula| numero de pelicula| int|
|id_socio| numero socio| varchar|
|id_status|si esta disponible| varchar|

* pelicula

| campo | dominio | tipo de dato |
| :---: | :-----: | :----------: |
|id_pelicula| numero de pelicula| int not null|
|titulo| nombre de la peli| varchar|
|genero| genero de la peli| varchar|
|director| director de la peli| varchar|
|actor| actor de la peli| varchar|
