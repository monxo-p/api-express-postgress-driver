-- crear tabla
CREATE TABLE mascotas (
	id_mascota SERIAL,
	nombre VARCHAR(50) NOT NULL,
	tipo VARCHAR(50) NOT NULL,
	raza VARCHAR(50),
	edad INT,
	PRIMARY KEY (id_mascota)
);

-- Obtener todos los datos de una tabla
SELECT * FROM mascotas;

-- Eliminar tabla
DROP TABLE mascotas

CREATE TABLE propietarios (
	id_propietario SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	telefono INT NOT NULL,
	identificacion INT NOT NULL
);

SELECT * FROM propietarios;

CREATE TABLE veterinarios (
	id_veterinario SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	cedula_pro INT NOT NULL,
	edad INT,
	experiencia INT
);

SELECT * FROM veterinarios;

-- Agrega una nueva propiedad
ALTER TABLE mascotas
ADD propietario_id INT;

-- Seteamos un foreign key
ALTER TABLE mascotas 
ADD FOREIGN KEY (propietario_id) REFERENCES propietarios(id_propietario);

-- Cambiamos el tipo de una propiedad, tener cuidado cuando ya tienes datos
ALTER TABLE mascotas
ALTER COLUMN edad SET DATA TYPE INT;

CREATE TABLE citas (
	id_cita SERIAL PRIMARY KEY,
	id_mascota INT,
	id_veterinario INT,
	FOREIGN KEY (id_mascota) REFERENCES mascotas(id_mascota),
	FOREIGN KEY (id_veterinario) REFERENCES veterinarios(id_veterinario)
);

SELECT * FROM citas;

INSERT INTO mascotas (nombre, tipo, raza, edad)
VALUES (
	'TOM',
	'Perro',
	'Cruce',
	4
);

SELECT * FROM veterinarios;

INSERT INTO veterinarios (nombre, apellido, cedula_pro, edad, experiencia)
VALUES (
	'Jose',
	'Perez',
	1234,
	22,
	5,
);
