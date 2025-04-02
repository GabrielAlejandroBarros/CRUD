CREATE DATABASE `oradores` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE oradores;
CREATE TABLE IF NOT EXISTS orador(
	id INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    mail VARCHAR(50) NOT NULL,
    tema VARCHAR(50) NOT NULL,
    fechaAlta DATE NOT NULL,
    unique(id),
    primary key (id)    
);