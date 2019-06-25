insert into "profesor" (nombre, apellido, segundo_apellido, email, telefono) values ('Garazi','Agirre', 'Uribarren', 'gagirre@teacheck.com', '688699677'), ('Unai', 'Sousa di Freitas', 'Fernandez', 'usousa@teacheck.com','678689687');
insert into "profesor" (nombre, apellido, segundo_apellido, email, telefono) values ('Jon','De la Natividad', 'Olaso', 'jnati@teacheck.com', '648656677'), ('Asier', 'Perez', 'Bedia', 'aperez@teacheck.com','678645697');
insert into "profesor" (nombre, apellido, segundo_apellido, email, telefono) values ('Kepa','Azcarate', 'Eizmendi', 'kazcarate@teacheck.com', '612349674');

insert into "curso" (nombre, descripcion, profesorID) values('1º Ingeniería Informatica', 'Primero de Ingeniería Informatica, Mondragon Unibertsitatea.',1);

insert into "alarma" (tipo, descripcion, correlacion_asistencia, correlacion_nota, correlacion_entregable, correlacion_entregable_nota, correlacion_horas, correlacion_atp, correlacion_motp, correlacion_ata, correlacion_mota) values ('nulo', 'no hay alarma', 0,0,0,0,0,0,0,0,0);

INSERT INTO "matricula" (matriculaID,alumnoID,cursoID,fechaInit) VALUES (1,1,1,'01-09-18'),(2,2,1,'01-09-18'),(3,3,1,'03-09-18'),(4,4,1,'01-09-18'),(5,5,1,'03-09-18'),(6,6,1,'02-09-18'),(7,7,1,'01-09-18'),(8,8,1,'01-09-18'),(9,9,1,'01-09-18'),(10,10,1,'02-09-18');
INSERT INTO "matricula" (matriculaID,alumnoID,cursoID,fechaInit) VALUES (11,11,1,'02-09-18'),(12,12,1,'02-09-18'),(13,13,1,'01-09-18'),(14,14,1,'03-09-18'),(15,15,1,'03-09-18'),(16,16,1,'02-09-18'),(17,17,1,'03-09-18'),(18,18,1,'02-09-18'),(19,19,1,'01-09-18'),(20,20,1,'03-09-18');
INSERT INTO "matricula" (matriculaID,alumnoID,cursoID,fechaInit) VALUES (21,21,1,'03-09-18'),(22,22,1,'03-09-18'),(23,23,1,'03-09-18'),(24,24,1,'01-09-18'),(25,25,1,'02-09-18'),(26,26,1,'03-09-18'),(27,27,1,'03-09-18'),(28,28,1,'03-09-18'),(29,29,1,'01-09-18'),(30,30,1,'01-09-18');
INSERT INTO "matricula" (matriculaID,alumnoID,cursoID,fechaInit) VALUES (31,31,1,'03-09-18'),(32,32,1,'02-09-18'),(33,33,1,'01-09-18'),(34,34,1,'03-09-18'),(35,35,1,'03-09-18'),(36,36,1,'01-09-18'),(37,37,1,'01-09-18'),(38,38,1,'01-09-18'),(39,39,1,'02-09-18'),(40,40,1,'02-09-18');
INSERT INTO "matricula" (matriculaID,alumnoID,cursoID,fechaInit) VALUES (41,41,1,'02-09-18'),(42,42,1,'01-09-18'),(43,43,1,'03-09-18'),(44,44,1,'02-09-18'),(45,45,1,'02-09-18'),(46,46,1,'02-09-18'),(47,47,1,'03-09-18'),(48,48,1,'03-09-18'),(49,49,1,'03-09-18'),(50,50,1,'03-09-18');
INSERT INTO "matricula" (matriculaID,alumnoID,cursoID,fechaInit) VALUES (51,51,1,'01-09-18'),(52,52,1,'03-09-18'),(53,53,1,'02-09-18'),(54,54,1,'02-09-18'),(55,55,1,'02-09-18'),(56,56,1,'03-09-18'),(57,57,1,'01-09-18'),(58,58,1,'02-09-18'),(59,59,1,'01-09-18'),(60,60,1,'01-09-18');

INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Calculo','Integrales y derivadas',20,1,1,1),('Calculo','Integrales y derivadas',20,1,1,2),('Calculo','Integrales y derivadas',20,1,1,3),('Calculo','Integrales y derivadas',20,1,1,4),('Calculo','Integrales y derivadas',20,1,1,5),('Calculo','Integrales y derivadas',20,1,1,6),('Calculo','Integrales y derivadas',20,1,1,7),('Calculo','Integrales y derivadas',20,1,1,8),('Calculo','Integrales y derivadas',20,1,1,9),('Calculo','Integrales y derivadas',20,1,1,10);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Calculo','Integrales y derivadas',20,1,1,11),('Calculo','Integrales y derivadas',20,1,1,12),('Calculo','Integrales y derivadas',20,1,1,13),('Calculo','Integrales y derivadas',20,1,1,14),('Calculo','Integrales y derivadas',20,1,1,15),('Calculo','Integrales y derivadas',20,1,1,16),('Calculo','Integrales y derivadas',20,1,1,17),('Calculo','Integrales y derivadas',20,1,1,18),('Calculo','Integrales y derivadas',20,1,1,19),('Calculo','Integrales y derivadas',20,1,1,20);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Calculo','Integrales y derivadas',20,1,1,21),('Calculo','Integrales y derivadas',20,1,1,22),('Calculo','Integrales y derivadas',20,1,1,23),('Calculo','Integrales y derivadas',20,1,1,24),('Calculo','Integrales y derivadas',20,1,1,25),('Calculo','Integrales y derivadas',20,1,1,26),('Calculo','Integrales y derivadas',20,1,1,27),('Calculo','Integrales y derivadas',20,1,1,28),('Calculo','Integrales y derivadas',20,1,1,29),('Calculo','Integrales y derivadas',20,1,1,30);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Calculo','Integrales y derivadas',20,1,1,31),('Calculo','Integrales y derivadas',20,1,1,32),('Calculo','Integrales y derivadas',20,1,1,33),('Calculo','Integrales y derivadas',20,1,1,34),('Calculo','Integrales y derivadas',20,1,1,35),('Calculo','Integrales y derivadas',20,1,1,36),('Calculo','Integrales y derivadas',20,1,1,37),('Calculo','Integrales y derivadas',20,1,1,38),('Calculo','Integrales y derivadas',20,1,1,39),('Calculo','Integrales y derivadas',20,1,1,40);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Calculo','Integrales y derivadas',20,1,1,41),('Calculo','Integrales y derivadas',20,1,1,42),('Calculo','Integrales y derivadas',20,1,1,43),('Calculo','Integrales y derivadas',20,1,1,44),('Calculo','Integrales y derivadas',20,1,1,45),('Calculo','Integrales y derivadas',20,1,1,46),('Calculo','Integrales y derivadas',20,1,1,47),('Calculo','Integrales y derivadas',20,1,1,48),('Calculo','Integrales y derivadas',20,1,1,49),('Calculo','Integrales y derivadas',20,1,1,50);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Calculo','Integrales y derivadas',20,1,1,51),('Calculo','Integrales y derivadas',20,1,1,52),('Calculo','Integrales y derivadas',20,1,1,53),('Calculo','Integrales y derivadas',20,1,1,54),('Calculo','Integrales y derivadas',20,1,1,55),('Calculo','Integrales y derivadas',20,1,1,56),('Calculo','Integrales y derivadas',20,1,1,57),('Calculo','Integrales y derivadas',20,1,1,58),('Calculo','Integrales y derivadas',20,1,1,59),('Calculo','Integrales y derivadas',20,1,1,60);

INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Programación','Programacion orientada a objetos',20,2,1,1),('Programación','Programacion orientada a objetos',20,2,1,2),('Programación','Programacion orientada a objetos',20,2,1,3),('Programación','Programacion orientada a objetos',20,2,1,4),('Programación','Programacion orientada a objetos',20,2,1,5),('Programación','Programacion orientada a objetos',20,2,1,6),('Programación','Programacion orientada a objetos',20,2,1,7),('Programación','Programacion orientada a objetos',20,2,1,8),('Programación','Programacion orientada a objetos',20,2,1,9),('Programación','Programacion orientada a objetos',20,2,1,10);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Programación','Programacion orientada a objetos',20,2,1,11),('Programación','Programacion orientada a objetos',20,2,1,12),('Programación','Programacion orientada a objetos',20,2,1,13),('Programación','Programacion orientada a objetos',20,2,1,14),('Programación','Programacion orientada a objetos',20,2,1,15),('Programación','Programacion orientada a objetos',20,2,1,16),('Programación','Programacion orientada a objetos',20,2,1,17),('Programación','Programacion orientada a objetos',20,2,1,18),('Programación','Programacion orientada a objetos',20,2,1,19),('Programación','Programacion orientada a objetos',20,2,1,20);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Programación','Programacion orientada a objetos',20,2,1,21),('Programación','Programacion orientada a objetos',20,2,1,22),('Programación','Programacion orientada a objetos',20,2,1,23),('Programación','Programacion orientada a objetos',20,2,1,24),('Programación','Programacion orientada a objetos',20,2,1,25),('Programación','Programacion orientada a objetos',20,2,1,26),('Programación','Programacion orientada a objetos',20,2,1,27),('Programación','Programacion orientada a objetos',20,2,1,28),('Programación','Programacion orientada a objetos',20,2,1,29),('Programación','Programacion orientada a objetos',20,2,1,30);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Programación','Programacion orientada a objetos',20,2,1,31),('Programación','Programacion orientada a objetos',20,2,1,32),('Programación','Programacion orientada a objetos',20,2,1,33),('Programación','Programacion orientada a objetos',20,2,1,34),('Programación','Programacion orientada a objetos',20,2,1,35),('Programación','Programacion orientada a objetos',20,2,1,36),('Programación','Programacion orientada a objetos',20,2,1,37),('Programación','Programacion orientada a objetos',20,2,1,38),('Programación','Programacion orientada a objetos',20,2,1,39),('Programación','Programacion orientada a objetos',20,2,1,40);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Programación','Programacion orientada a objetos',20,2,1,41),('Programación','Programacion orientada a objetos',20,2,1,42),('Programación','Programacion orientada a objetos',20,2,1,43),('Programación','Programacion orientada a objetos',20,2,1,44),('Programación','Programacion orientada a objetos',20,2,1,45),('Programación','Programacion orientada a objetos',20,2,1,46),('Programación','Programacion orientada a objetos',20,2,1,47),('Programación','Programacion orientada a objetos',20,2,1,48),('Programación','Programacion orientada a objetos',20,2,1,49),('Programación','Programacion orientada a objetos',20,2,1,50);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Programación','Programacion orientada a objetos',20,2,1,51),('Programación','Programacion orientada a objetos',20,2,1,52),('Programación','Programacion orientada a objetos',20,2,1,53),('Programación','Programacion orientada a objetos',20,2,1,54),('Programación','Programacion orientada a objetos',20,2,1,55),('Programación','Programacion orientada a objetos',20,2,1,56),('Programación','Programacion orientada a objetos',20,2,1,57),('Programación','Programacion orientada a objetos',20,2,1,58),('Programación','Programacion orientada a objetos',20,2,1,59),('Programación','Programacion orientada a objetos',20,2,1,60);

INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,1),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,2),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,3),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,4),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,5),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,6),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,7),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,8),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,9),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,10);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,11),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,12),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,13),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,14),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,15),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,16),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,17),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,18),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,19),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,20);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,21),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,22),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,23),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,24),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,25),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,26),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,27),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,28),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,29),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,30);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,31),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,32),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,33),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,34),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,35),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,36),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,37),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,38),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,39),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,40);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,41),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,42),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,43),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,44),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,45),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,46),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,47),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,48),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,49),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,50);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,51),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,52),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,53),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,54),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,55),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,56),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,57),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,58),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,59),('Informatica Industrial','Funcionamiento de maquinas automatizadas',20,3,1,60);

INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Programación de sistemas móviles','Programación en Android',20,4,1,1),('Programación de sistemas móviles','Programación en Android',20,4,1,2),('Programación de sistemas móviles','Programación en Android',20,4,1,3),('Programación de sistemas móviles','Programación en Android',20,4,1,4),('Programación de sistemas móviles','Programación en Android',20,4,1,5),('Programación de sistemas móviles','Programación en Android',20,4,1,6),('Programación de sistemas móviles','Programación en Android',20,4,1,7),('Programación de sistemas móviles','Programación en Android',20,4,1,8),('Programación de sistemas móviles','Programación en Android',20,4,1,9),('Programación de sistemas móviles','Programación en Android',20,4,1,10);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Programación de sistemas móviles','Programación en Android',20,4,1,11),('Programación de sistemas móviles','Programación en Android',20,4,1,12),('Programación de sistemas móviles','Programación en Android',20,4,1,13),('Programación de sistemas móviles','Programación en Android',20,4,1,14),('Programación de sistemas móviles','Programación en Android',20,4,1,15),('Programación de sistemas móviles','Programación en Android',20,4,1,16),('Programación de sistemas móviles','Programación en Android',20,4,1,17),('Programación de sistemas móviles','Programación en Android',20,4,1,18),('Programación de sistemas móviles','Programación en Android',20,4,1,19),('Programación de sistemas móviles','Programación en Android',20,4,1,20);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Programación de sistemas móviles','Programación en Android',20,4,1,21),('Programación de sistemas móviles','Programación en Android',20,4,1,22),('Programación de sistemas móviles','Programación en Android',20,4,1,23),('Programación de sistemas móviles','Programación en Android',20,4,1,24),('Programación de sistemas móviles','Programación en Android',20,4,1,25),('Programación de sistemas móviles','Programación en Android',20,4,1,26),('Programación de sistemas móviles','Programación en Android',20,4,1,27),('Programación de sistemas móviles','Programación en Android',20,4,1,28),('Programación de sistemas móviles','Programación en Android',20,4,1,29),('Programación de sistemas móviles','Programación en Android',20,4,1,30);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Programación de sistemas móviles','Programación en Android',20,4,1,31),('Programación de sistemas móviles','Programación en Android',20,4,1,32),('Programación de sistemas móviles','Programación en Android',20,4,1,33),('Programación de sistemas móviles','Programación en Android',20,4,1,34),('Programación de sistemas móviles','Programación en Android',20,4,1,35),('Programación de sistemas móviles','Programación en Android',20,4,1,36),('Programación de sistemas móviles','Programación en Android',20,4,1,37),('Programación de sistemas móviles','Programación en Android',20,4,1,38),('Programación de sistemas móviles','Programación en Android',20,4,1,39),('Programación de sistemas móviles','Programación en Android',20,4,1,40);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Programación de sistemas móviles','Programación en Android',20,4,1,41),('Programación de sistemas móviles','Programación en Android',20,4,1,42),('Programación de sistemas móviles','Programación en Android',20,4,1,43),('Programación de sistemas móviles','Programación en Android',20,4,1,44),('Programación de sistemas móviles','Programación en Android',20,4,1,45),('Programación de sistemas móviles','Programación en Android',20,4,1,46),('Programación de sistemas móviles','Programación en Android',20,4,1,47),('Programación de sistemas móviles','Programación en Android',20,4,1,48),('Programación de sistemas móviles','Programación en Android',20,4,1,49),('Programación de sistemas móviles','Programación en Android',20,4,1,50);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Programación de sistemas móviles','Programación en Android',20,4,1,51),('Programación de sistemas móviles','Programación en Android',20,4,1,52),('Programación de sistemas móviles','Programación en Android',20,4,1,53),('Programación de sistemas móviles','Programación en Android',20,4,1,54),('Programación de sistemas móviles','Programación en Android',20,4,1,55),('Programación de sistemas móviles','Programación en Android',20,4,1,56),('Programación de sistemas móviles','Programación en Android',20,4,1,57),('Programación de sistemas móviles','Programación en Android',20,4,1,58),('Programación de sistemas móviles','Programación en Android',20,4,1,59),('Programación de sistemas móviles','Programación en Android',20,4,1,60);

INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Álgebra','Álgebra lineal',20,5,1,1),('Álgebra','Álgebra lineal',20,5,1,2),('Álgebra','Álgebra lineal',20,5,1,3),('Álgebra','Álgebra lineal',20,5,1,4),('Álgebra','Álgebra lineal',20,5,1,5),('Álgebra','Álgebra lineal',20,5,1,6),('Álgebra','Álgebra lineal',20,5,1,7),('Álgebra','Álgebra lineal',20,5,1,8),('Álgebra','Álgebra lineal',20,5,1,9),('Álgebra','Álgebra lineal',20,5,1,10);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Álgebra','Álgebra lineal',20,5,1,11),('Álgebra','Álgebra lineal',20,5,1,12),('Álgebra','Álgebra lineal',20,5,1,13),('Álgebra','Álgebra lineal',20,5,1,14),('Álgebra','Álgebra lineal',20,5,1,15),('Álgebra','Álgebra lineal',20,5,1,16),('Álgebra','Álgebra lineal',20,5,1,17),('Álgebra','Álgebra lineal',20,5,1,18),('Álgebra','Álgebra lineal',20,5,1,19),('Álgebra','Álgebra lineal',20,5,1,20);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Álgebra','Álgebra lineal',20,5,1,21),('Álgebra','Álgebra lineal',20,5,1,22),('Álgebra','Álgebra lineal',20,5,1,23),('Álgebra','Álgebra lineal',20,5,1,24),('Álgebra','Álgebra lineal',20,5,1,25),('Álgebra','Álgebra lineal',20,5,1,26),('Álgebra','Álgebra lineal',20,5,1,27),('Álgebra','Álgebra lineal',20,5,1,28),('Álgebra','Álgebra lineal',20,5,1,29),('Álgebra','Álgebra lineal',20,5,1,30);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Álgebra','Álgebra lineal',20,5,1,31),('Álgebra','Álgebra lineal',20,5,1,32),('Álgebra','Álgebra lineal',20,5,1,33),('Álgebra','Álgebra lineal',20,5,1,34),('Álgebra','Álgebra lineal',20,5,1,35),('Álgebra','Álgebra lineal',20,5,1,36),('Álgebra','Álgebra lineal',20,5,1,37),('Álgebra','Álgebra lineal',20,5,1,38),('Álgebra','Álgebra lineal',20,5,1,39),('Álgebra','Álgebra lineal',20,5,1,40);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Álgebra','Álgebra lineal',20,5,1,41),('Álgebra','Álgebra lineal',20,5,1,42),('Álgebra','Álgebra lineal',20,5,1,43),('Álgebra','Álgebra lineal',20,5,1,44),('Álgebra','Álgebra lineal',20,5,1,45),('Álgebra','Álgebra lineal',20,5,1,46),('Álgebra','Álgebra lineal',20,5,1,47),('Álgebra','Álgebra lineal',20,5,1,48),('Álgebra','Álgebra lineal',20,5,1,49),('Álgebra','Álgebra lineal',20,5,1,50);
INSERT INTO "asignatura" (nombre,descripcion,peso,profesorID,alarmaID,matriculaID) VALUES ('Álgebra','Álgebra lineal',20,5,1,51),('Álgebra','Álgebra lineal',20,5,1,52),('Álgebra','Álgebra lineal',20,5,1,53),('Álgebra','Álgebra lineal',20,5,1,54),('Álgebra','Álgebra lineal',20,5,1,55),('Álgebra','Álgebra lineal',20,5,1,56),('Álgebra','Álgebra lineal',20,5,1,57),('Álgebra','Álgebra lineal',20,5,1,58),('Álgebra','Álgebra lineal',20,5,1,59),('Álgebra','Álgebra lineal',20,5,1,60);