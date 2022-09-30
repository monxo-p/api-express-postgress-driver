CREATE TABLE propietarios (
	id_propietario SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	telefono INT NOT NULL,
	identificacion INT NOT NULL
);
​
SELECT * FROM propietarios;
​
INSERT INTO propietarios (nombre, apellido, telefono, identificacion)
VALUES (
	'Steven',
	'Gomez',
	123344,
	12345467
);