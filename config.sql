   CREATE DATABASE IF NOT EXISTS videoclub;
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



