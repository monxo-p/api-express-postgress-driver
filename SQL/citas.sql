CREATE TABLE citas (
	id_cita SERIAL PRIMARY KEY,
	id_mascota INT,
	id_veterinario INT,
	FOREIGN KEY (id_mascota) REFERENCES mascotas(id_mascota),
	FOREIGN KEY (id_veterinario) REFERENCES veterinarios(id_veterinario)
);
​
SELECT * FROM citas;
​
INSERT INTO citas (id_mascota, id_veterinario)
VALUES (
	1,
	1
);