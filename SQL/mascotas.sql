-- Crear tablas
CREATE TABLE mascotas (
	id_mascota SERIAL,
	nombre VARCHAR(50) NOT NULL,
	tipo VARCHAR(50) NOT NULL,
	raza VARCHAR(50),
	edad INT,
	PRIMARY KEY (id_mascota)
);

ALTER TABLE mascotas
ADD propietario_id varchar(50) NOT NULL;
​
-- Obtener todos los datos de una tabla
SELECT * FROM mascotas;

-- Ordenarlas de nuevo
SELECT * FROM mascotas
ORDER BY id_mascota;

​
INSERT INTO mascotas (nombre, tipo, raza, edad)
VALUES ('Chanclas','Perro','Pastor Aleman',5),
	('Chic','Gato','Cruce',1);

​
UPDATE mascotas
	SET nombre = 'Jerry', tipo = 'Gato', raza = 'Cruce', edad = 3
	WHERE id_mascota = 2

UPDATE mascotas
	SET propietario_id = 6
	WHERE id_mascota = 2
	
UPDATE mascotas
	SET 