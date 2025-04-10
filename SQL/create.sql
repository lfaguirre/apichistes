DROP TABLE IF EXISTS ChistesTematicas;
DROP TABLE IF EXISTS Tematicas;
DROP TABLE IF EXISTS Chistes;
DROP TABLE IF EXISTS Usuarios;

CREATE TABLE Usuarios(
  id int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(50),
  contrasena varchar(50),
  PRIMARY KEY (`id`)
);

CREATE TABLE Chistes (
  id int(11) NOT NULL AUTO_INCREMENT,
  titulo varchar(100),
  cuerpo TEXT,
  autor INT(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `autor` (`autor`),
  CONSTRAINT `fk_autor` FOREIGN KEY (`autor`) REFERENCES `Usuarios` (`id`) ON DELETE SET NULL
);


CREATE TABLE Tematicas (
  id INT(11) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50),
  PRIMARY KEY (id)
);

CREATE TABLE ChistesTematicas(
  idChiste int(11) NOT NULL ,
  idTematica int(11)NOT NULL,
  CONSTRAINT `fk_chiste` FOREIGN KEY (`idChiste`) REFERENCES `Chistes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_tematica` FOREIGN KEY (`idTematica`) REFERENCES `Tematicas` (`id`) ON DELETE CASCADE
)
