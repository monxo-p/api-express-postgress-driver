CREATE TABLE veterinarios (
	id_veterinario SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	cedula_pro INT NOT NULL,
	edad INT,
	experiencia INT
);
​
SELECT * FROM veterinarios;
​
INSERT INTO veterinarios (nombre, apellido, cedula_pro, edad, experiencia)
VALUES (
	'Alejandra',
	'Martinez',
	1233442342,
	28,
	4
);