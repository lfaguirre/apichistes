-- Crea el usuario Manolito, Pepe, Isabel y Pedro
INSERT INTO Usuarios(nombre,contrasena) VALUES('Manolito','Manolito');
INSERT INTO Usuarios(nombre,contrasena) VALUES('Pepe','Pepe');
INSERT INTO Usuarios(nombre,contrasena) VALUES('Isabel','Isabel');
INSERT INTO Usuarios(nombre,contrasena) VALUES('Pedro','Pedro');

-- Crea las tematicas “humor negro”, “humor amarillo”, “chistes verdes”
INSERT INTO Tematicas(nombre) VALUES ('humor negro');
INSERT INTO Tematicas(nombre) VALUES ('humor amarillo');
INSERT INTO Tematicas(nombre) VALUES ('chistes verdes');

-- Crea 3 chistes para cada temática por cada usuario
-- Supongo que a crear 3 chistes por usuarios insertados en cada tematica vale, sino meter mas chistes de la misma manera 
INSERT INTO Chistes(titulo,cuerpo,autor) VALUES ('Chiste 1','Un ingles, un francés y...',(SELECT id from Usuarios where nombre='Manolito'));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 1'),(SELECT id from Tematicas where nombre='humor negro' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 1'),(SELECT id from Tematicas where nombre='humor amarillo' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 1'),(SELECT id from Tematicas where nombre='chistes verdes' ));

INSERT INTO Chistes(titulo,cuerpo,autor) VALUES ('Chiste 2','Habia...',(SELECT id from Usuarios where nombre='Manolito'));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 2'),(SELECT id from Tematicas where nombre='humor negro' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 2'),(SELECT id from Tematicas where nombre='humor amarillo' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 2'),(SELECT id from Tematicas where nombre='chistes verdes' ));

INSERT INTO Chistes(titulo,cuerpo,autor) VALUES ('Chiste 3','...',(SELECT id from Usuarios where nombre='Manolito'));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 3'),(SELECT id from Tematicas where nombre='humor negro' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 3'),(SELECT id from Tematicas where nombre='humor amarillo' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 3'),(SELECT id from Tematicas where nombre='chistes verdes' ));

INSERT INTO Chistes(titulo,cuerpo,autor) VALUES ('Chiste 4','Un ingles, un francés y...',(SELECT id from Usuarios where nombre='Pepe'));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 4'),(SELECT id from Tematicas where nombre='humor negro' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 4'),(SELECT id from Tematicas where nombre='humor amarillo' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 4'),(SELECT id from Tematicas where nombre='chistes verdes' ));

INSERT INTO Chistes(titulo,cuerpo,autor) VALUES ('Chiste 5','Habia...',(SELECT id from Usuarios where nombre='Pepe'));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 5'),(SELECT id from Tematicas where nombre='humor negro' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 5'),(SELECT id from Tematicas where nombre='humor amarillo' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 5'),(SELECT id from Tematicas where nombre='chistes verdes' ));

INSERT INTO Chistes(titulo,cuerpo,autor) VALUES ('Chiste 6','...',(SELECT id from Usuarios where nombre='Pepe'));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 6'),(SELECT id from Tematicas where nombre='humor negro' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 6'),(SELECT id from Tematicas where nombre='humor amarillo' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 6'),(SELECT id from Tematicas where nombre='chistes verdes' ));

INSERT INTO Chistes(titulo,cuerpo,autor) VALUES ('Chiste 7','...',(SELECT id from Usuarios where nombre='Isabel'));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 7'),(SELECT id from Tematicas where nombre='humor negro' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 7'),(SELECT id from Tematicas where nombre='humor amarillo' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 7'),(SELECT id from Tematicas where nombre='chistes verdes' ));

INSERT INTO Chistes(titulo,cuerpo,autor) VALUES ('Chiste 8','...',(SELECT id from Usuarios where nombre='Isabel'));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 8'),(SELECT id from Tematicas where nombre='humor negro' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 8'),(SELECT id from Tematicas where nombre='humor amarillo' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 8'),(SELECT id from Tematicas where nombre='chistes verdes' ));

INSERT INTO Chistes(titulo,cuerpo,autor) VALUES ('Chiste 9','...',(SELECT id from Usuarios where nombre='Isabel'));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 9'),(SELECT id from Tematicas where nombre='humor negro' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 9'),(SELECT id from Tematicas where nombre='humor amarillo' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 9'),(SELECT id from Tematicas where nombre='chistes verdes' ));

INSERT INTO Chistes(titulo,cuerpo,autor) VALUES ('Chiste 10','...',(SELECT id from Usuarios where nombre='Pedro'));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 10'),(SELECT id from Tematicas where nombre='humor negro' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 10'),(SELECT id from Tematicas where nombre='humor amarillo' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 10'),(SELECT id from Tematicas where nombre='chistes verdes' ));

INSERT INTO Chistes(titulo,cuerpo,autor) VALUES ('Chiste 11','...',(SELECT id from Usuarios where nombre='Pedro'));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 11'),(SELECT id from Tematicas where nombre='humor negro' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 11'),(SELECT id from Tematicas where nombre='humor amarillo' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 11'),(SELECT id from Tematicas where nombre='chistes verdes' ));

INSERT INTO Chistes(titulo,cuerpo,autor) VALUES ('Chiste 12','...',(SELECT id from Usuarios where nombre='Pedro'));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 12'),(SELECT id from Tematicas where nombre='humor negro' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 12'),(SELECT id from Tematicas where nombre='humor amarillo' ));
INSERT INTO ChistesTematicas(idChiste,idTematica) VALUES((SELECT id from Chistes where titulo='Chiste 12'),(SELECT id from Tematicas where nombre='chistes verdes' ));



-- Realiza consultas:

-- Consulta 1: Saca todos los chistes creados por el usuario “Manolito”
SELECT c.titulo,u.nombre FROM Chistes c LEFT JOIN Usuarios u on u.id=c.autor where u.nombre='Manolito';

-- Consulta 2: Saca todos los chistes de la temática “Humor negro”
SELECT c.titulo,t.nombre 
FROM ChistesTematicas ct 
  LEFT JOIN Tematicas t on t.id=ct.idTematica 
  LEFT JOIN Chistes c on c.id=ct.idChiste 
WHERE t.nombre='Humor negro';
 
-- Consulta 3: Saca todos los chistes de la temática  “Humor negro” creados por el usuario “Manolito”
SELECT c.titulo,t.nombre 
FROM ChistesTematicas ct 
  LEFT JOIN Tematicas t on t.id=ct.idTematica 
  LEFT JOIN Chistes c on c.id=ct.idChiste  
  LEFT JOIN Usuarios u on u.id=c.autor
WHERE t.nombre='Humor negro' and u.nombre='Manolito';
