SELECT * FROM propietarios;
SELECT * FROM veterinarios;
SELECT * FROM mascotas;
SELECT * FROM citas;

SELECT * FROM mascotas
ORDER BY mascotas.id_mascota;

INSERT INTO propietarios 
	(nombre, apellido, telefono, identificacion)
	VALUES
		('Lucas', 'Gomez', 123456, 098765),
		('Maria', 'Diaz', 56334, 678564),
		('David', 'Ledesma', 745645, 8654564),
		('Cristina', 'Navarro', 23543456, 5467457),
		('Carlos', 'Gutierrez', 34223423, 3453434);
​
INSERT INTO veterinarios 
	(nombre, apellido, cedula_pro, edad, experiencia)
	VALUES
		('Camilo', 'Caballinas', 435234, 23, 2),
		('Paloma', 'Sancho', 435453, 25, 3),
		('Teodora', 'Alfaro', 351823, 32, 7),
		('Cristina', 'Bustamante', 543456, 44, 8),
		('Carlos', 'Zuleta', 223423, 28, 5);
​
INSERT INTO mascotas 
	(nombre, tipo, raza, edad, propietario_id)
	VALUES
		('Merlin', 'Gato', 'Cruce', 2, 3),
		('Sol', 'Perro', 'Fox Terrier', 6, 5),
		('Luna', 'Perra', 'Galgo', 1, 1);
		
INSERT INTO citas 
	(id_cita, id_mascota, id_veterinario)
	VALUES
		(1, 5, 4),
		(2, 1, 5),
		(3, 3, 6),
		(4, 3, 5),
		(5, 4, 1),
		(6, 5, 3),
		(7, 1, 5),
		(8, 4, 6);