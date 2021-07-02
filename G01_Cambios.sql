/**==================================================================================================================*/
--                                              A.TRIGGERS Y SERVICIOS
/**==================================================================================================================*/

--1.Se le agregara columna cantidad_salas (cantidad de salas de convención) y cantidad_oficinas
--(cantidad de oficinas regulares) a la tabla CLIENTE.  Es necesario mantener actualizadas las columnas
--cantidad_salas y cantidad_oficinas con la cantidad de salas de convención y oficinas regulares que cada cliente
-- tiene alquiladas por tiempo indeterminado (es decir que aún no tienen fecha de fin). Se debe realizar
-- con triggers FOR STATEMENT.

--2.Utilizando 2 vistas V_OFICINA_REGULAR y V_SALA_CONVENCION que contienen todos los datos de las oficinas
-- regulares o de las salas de convención respectivamente, construir los triggers INSTEAD OF necesarios para
-- mantener actualizadas las tablas de OFICINA, OFICINA_REG y SALA_CONVENSION de manera de respetar el diseño de
-- datos de la jerarquía.

/**==================================================================================================================*/
--                                              B.VISTAS
/**==================================================================================================================*/

--1.Construya una vista V_CLIENTES_COMP que contenga las oficinas que han sido alquiladas por todos los clientes.

--2. Construya una vista V_OFICINAS_REG que liste para cada oficina su identificador,
--su tipo, su superficie, su monto de alquiler y la cantidad promedio de escritorios por superficie.

/*CREATE VIEW GR01_V_OFICINAS_REG AS
    SELECT id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o, AVG(r.cant_escritorios)
    FROM gr01_oficina o
    JOIN gr01_oficina_reg r on o.id_oficina = r.id_oficina
    WHERE id_oficina IN (SELECT id_oficina
                        FROM gr01_oficina_reg r
                        WHERE id_oficina IN (SELECT id_oficina
                                            FROM gr01_oficina
                                            GROUP BY superficie));

CREATE VIEW GR01_V_OFICINAS_REG AS
SELECT o.id_oficina,  monto_alquiler, tipo_o, superficie, cant_escritorios, AVG(cant_escritorios)
FROM gr01_oficina o
JOIN gr01_oficina_reg r on o.id_oficina = r.id_oficina
WHERE o.superficie IN (SELECT o1.superficie
                        FROM gr01_oficina o1
                        GROUP BY o1.superficie)
GROUP BY o.id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o, cant_escritorios;


--ESTO ME TRAE EL PROMEDIO:
SELECT superficie, AVG(cant_escritorios)
FROM gr01_oficina o
JOIN gr01_oficina_reg r ON r.id_oficina = o.id_oficina
GROUP BY superficie;

--SI AGREGO LOS OTROS CAMPOS LOS TENGO QUE INCLUIR E EL GROUP BY Y YA NO CALCULA EL PROMEDIO:
SELECT o.id_oficina,  monto_alquiler, tipo_o, superficie, AVG(cant_escritorios)
FROM gr01_oficina o
JOIN gr01_oficina_reg r ON r.id_oficina = o.id_oficina
GROUP BY superficie, o.id_oficina;

SELECT id_oficina,  monto_alquiler, tipo_o, superficie, AVG(cant_escritorios)
FROM gr01_oficina o
JOIN gr01_oficina_reg r ON r.id_oficina = o.id_oficina
JOIN gr01_oficina o1 ON o1.id_oficina = o.id_oficina
WHERE r.superficie IN (SELECT o.superficie
    FROM )
GROUP BY superficie;

SELECT id_oficina,  monto_alquiler, tipo_o, superficie, (SELECT AVG(r.cant_escritorios)
                                                            FROM GR01_V_OFICINAS_REG r
                                                            JOIN gr01_oficina o ON o.id_oficina = r.id_oficina
                                                            GROUP BY o.superficie)
FROM gr01_oficina;

*/

CREATE VIEW GR01_V_PROMEDIO AS
SELECT superficie, AVG(cant_escritorios) as promedio
FROM gr01_oficina o
JOIN gr01_oficina_reg r ON r.id_oficina = o.id_oficina
GROUP BY superficie;

CREATE VIEW GR01_V_OFICINAS_REG AS
    SELECT id_oficina,  monto_alquiler, tipo_o, v.superficie, v.promedio
FROM gr01_oficina o
JOIN GR01_V_PROMEDIO v ON v.superficie = o.superficie;

SELECT * FROM GR01_V_OFICINAS_REG;
/*
Se crea primero la vista GR01_V_PROMEDIO para poder obtener el promedio de escritos por superficie.
No es posible hacer esta vista actualizable porque es necesario proyectar atributos de las dos tablas involucradas y
utilizar funciones de agrupamiento.
Luego se crea la vista GR01_V_OFICINAS_REG, solicitada en el ejercicio, en la que se proyectan los atributos de la tabla
gr01_oficina y se hace un join para traer los resultados de la vista GR01_V_PROMEDIO.
La vista resultante no es actualizable, porque es necesario proyectar atributos de la tabla gr01_oficina y de la vista
GR01_V_PROMEDIO que, a su vez y como vimos anteriormente, no es actualizable.
*/

/**==================================================================================================================*/
--                                              INSERTS
/**==================================================================================================================*/

-- GR01_CLIENTE
INSERT INTO GR01_CLIENTE (tipo_doc, nro_doc, nombre, e_mail, apellido) VALUES ('DNI', 25930772, 'Prue', 'pchattell0@livejournal.com', 'Chattell');
INSERT INTO GR01_CLIENTE (tipo_doc, nro_doc, nombre, e_mail, apellido) VALUES ('DNI', 40571911, 'Andriette', 'ablaby1@tinyurl.com', 'Blaby');
INSERT INTO GR01_CLIENTE (tipo_doc, nro_doc, nombre, e_mail, apellido) VALUES ('DNI', 27605420, 'Penn', 'ppapaminas2@jugem.jp', 'Papaminas');
INSERT INTO GR01_CLIENTE (tipo_doc, nro_doc, nombre, e_mail, apellido) VALUES ('DNI', 27605222, 'Harwell', 'hjobes3@zimbio.com', 'Jobes');
INSERT INTO GR01_CLIENTE (tipo_doc, nro_doc, nombre, e_mail, apellido) VALUES ('RUC', 39523827, 'Mellicent', 'mpuleque4@g.co', 'Puleque');
INSERT INTO GR01_CLIENTE (tipo_doc, nro_doc, nombre, e_mail, apellido) VALUES ('RUC', 30460675, 'Domini', 'dduckwith5@gov.uk', 'Duckwith');
INSERT INTO GR01_CLIENTE (tipo_doc, nro_doc, nombre, e_mail, apellido) VALUES ('RUC', 35158749, 'Elora', 'eallom6@plala.or.jp', 'Allom');
INSERT INTO GR01_CLIENTE (tipo_doc, nro_doc, nombre, e_mail, apellido) VALUES ('RUC', 37425539, 'Andee', 'ayarwood7@digg.com', 'Yarwood');
INSERT INTO GR01_CLIENTE (tipo_doc, nro_doc, nombre, e_mail, apellido) VALUES ('DNI', 39768674, 'Florida', 'fbottell8@ftc.gov', 'Bottell');
INSERT INTO GR01_CLIENTE (tipo_doc, nro_doc, nombre, e_mail, apellido) VALUES ('DNI', 284498096, 'Dionisio', 'dmellsop9@blogger.com', 'Mellsop');

--GR01_OFICINA
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o) VALUES (1, 93, 8, 55.54, 'R');
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o) VALUES (2, 47, 29, 58.14, 'R');
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o) VALUES (3, 90, 1, 24.67, 'R');
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o) VALUES (4, 57, 22, 59.83, 'R');
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o) VALUES (5, 41, 32, 89.59, 'R');
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o) VALUES (6, 80, 75, 94.94, 'C');
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o) VALUES (7, 14, 49, 25.4, 'C');
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o) VALUES (8, 45, 61, 88.64, 'C');
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o) VALUES (9, 34, 50, 25.71, 'C');
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o) VALUES (10, 25, 19, 35.21, 'C');
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o) VALUES (11, 90, 32, 89.59, 'R');
--GR01_OFICINA_REG
INSERT INTO GR01_OFICINA_REG (id_oficina, cant_escritorios, cant_pc) VALUES (1, 7, 16);
INSERT INTO GR01_OFICINA_REG (id_oficina, cant_escritorios, cant_pc) VALUES (2, 1, 18);
INSERT INTO GR01_OFICINA_REG (id_oficina, cant_escritorios, cant_pc) VALUES (3, 17, 4);
INSERT INTO GR01_OFICINA_REG (id_oficina, cant_escritorios, cant_pc) VALUES (4, 23, 25);
INSERT INTO GR01_OFICINA_REG (id_oficina, cant_escritorios, cant_pc) VALUES (5, 29, 17);
INSERT INTO GR01_OFICINA_REG (id_oficina, cant_escritorios, cant_pc) VALUES (11, 11, 4);
-- SE OMITIO EJECUTAR ESTAS LINEAS PORQUE CADA OFICINA ESTA RELACIONADA CON UN TIPO_O
--INSERT INTO GR01_OFICINA_REG (id_oficina, cant_escritorios, cant_pc) VALUES (5, 8, 15);
--INSERT INTO GR01_OFICINA_REG (id_oficina, cant_escritorios, cant_pc) VALUES (9, 20, 17);
--INSERT INTO GR01_OFICINA_REG (id_oficina, cant_escritorios, cant_pc) VALUES (8, 5, 20);
--INSERT INTO GR01_OFICINA_REG (id_oficina, cant_escritorios, cant_pc) VALUES (9, 27, 1);
--INSERT INTO GR01_OFICINA_REG (id_oficina, cant_escritorios, cant_pc) VALUES (9, 23, 10);

--GR01_SALA_CONVENCION
INSERT INTO GR01_SALA_CONVENCION (id_oficina, cant_sillas, cant_pantallas) VALUES (6, 50, 2);
INSERT INTO GR01_SALA_CONVENCION (id_oficina, cant_sillas, cant_pantallas) VALUES (7, 15, 3);
INSERT INTO GR01_SALA_CONVENCION (id_oficina, cant_sillas, cant_pantallas) VALUES (8, 34, 4);
INSERT INTO GR01_SALA_CONVENCION (id_oficina, cant_sillas, cant_pantallas) VALUES (9, 8, 8);
INSERT INTO GR01_SALA_CONVENCION (id_oficina, cant_sillas, cant_pantallas) VALUES (10, 94, 11);
-- SE OMITIO EJECUTAR ESTAS LINEAS PORQUE CADA OFICINA ESTA RELACIONADA CON UN TIPO_O
--INSERT INTO GR01_SALA_CONVENCION (id_oficina, cant_sillas, cant_pantallas) VALUES (1, 74, 20);
--INSERT INTO GR01_SALA_CONVENCION (id_oficina, cant_sillas, cant_pantallas) VALUES (2, 30, 6);
--INSERT INTO GR01_SALA_CONVENCION (id_oficina, cant_sillas, cant_pantallas) VALUES (3, 66, 16);
--INSERT INTO GR01_SALA_CONVENCION (id_oficina, cant_sillas, cant_pantallas) VALUES (4, 1, 20);
--INSERT INTO GR01_SALA_CONVENCION (id_oficina, cant_sillas, cant_pantallas) VALUES (5, 66, 1);

--GR01_ALQUILA
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 25930772,1, '11/1/2019', '12/31/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 40571911, 1, '10/1/2019', '8/6/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 27605420, 1, '7/28/2019', '9/7/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 27605222, 1, '2/21/2020', '4/11/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('RUC', 39523827, 1, '6/28/2019', '6/4/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('RUC', 30460675, 1, '10/9/2018', '8/25/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('RUC', 35158749, 1, '2/27/2020', '11/11/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('RUC', 37425539, 1, '2/6/2020', '6/1/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 284498096,1, '1/30/2020', '1/1/2021');
/*INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 39768679, 1, '10/15/2019', '1/18/2021');*/
--[2021-06-30 04:29:05] [23503] ERROR: insert or update on table "gr01_alquila" violates foreign key constraint "fk_gr01_alquila_cliente"
--[2021-06-30 04:29:05] Detail: Key (tipo_doc, nro_doc)=(DNI, 39768679) is not present in table "gr01_cliente".
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 39768674, 1, '10/15/2019', '1/18/2021');

INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 25930772,3, '10/19/2019', '2/15/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 40571911,3, '3/30/2020', '12/27/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 27605420,3, '12/30/2019', '6/18/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 27605222,3, '7/8/2019', '4/1/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('RUC', 39523827,3, '12/15/2018', '7/28/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('RUC', 30460675,3, '12/30/2019', '5/8/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('RUC', 35158749,3, '9/25/2019', '12/18/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('RUC', 37425539,3, '12/21/2018', '5/3/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 39768674,3, '1/15/2019', '2/1/2021');
/*INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 28449809,3, '4/18/2021','11/23/2020');*/
--[2021-06-30 04:32:31] [23503] ERROR: insert or update on table "gr01_alquila" violates foreign key constraint "fk_gr01_alquila_cliente"
--[2021-06-30 04:32:31] Detail: Key (tipo_doc, nro_doc)=(DNI, 28449809) is not present in table "gr01_cliente".
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 284498096,3, '4/18/2021','11/23/2020');

INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 25930772,9, '8/24/2018', '1/21/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 40571911,9, '11/13/2018', '8/23/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 27605420,9, '8/17/2019', '1/31/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 27605222,9, '9/5/2018', '6/15/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('RUC', 39523827,9, '11/14/2018', '8/20/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('RUC', 30460675,9, '4/4/2020', '5/16/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('RUC', 35158749,9, '12/1/2019', '1/12/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('RUC', 37425539,9, '3/6/2019', '12/29/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 39768674,9, '10/17/2018', '8/5/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 284498096,9, '2/14/2020', '3/6/2021');

INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 284498096, 10, '10/21/2019', '11/23/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 284498096, 2,'12/12/2018', '5/27/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 39768674, 2,'6/9/2020', '1/31/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('RUC', 30460675, 2,'8/11/2018', '12/2/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('RUC', 30460675, 4,'1/6/2019', '5/10/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 27605420, 4,'3/2/2019', '2/15/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('RUC', 35158749, 4,'8/12/2019', '2/10/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 40571911, 5, '12/24/2018', '11/11/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 39768674, 5, '12/28/2019', '2/22/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 40571911, 6, '8/2/2018', '1/18/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('RUC', 37425539, 6, '5/18/2019', '9/13/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 25930772, 7, '6/19/2020', '8/9/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 27605420, 7, '9/10/2018', '5/5/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('RUC', 37425539, 8, '7/28/2018', '12/28/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 40571911, 8, '4/20/2020', '6/4/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('RUC', 39523827, 8, '12/7/2018', '6/4/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 39768674, 8, '10/9/2018', '6/20/2021');

/*INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 40571911, 8, '2/10/2020', '1/14/2021');*/
--[2021-06-30 04:38:51] [23505] ERROR: duplicate key value violates unique constraint "pk_gr01_alquila"
--[2021-06-30 04:38:51] Detail: Key (tipo_doc, nro_doc, id_oficina)=(DNI, 40571911, 8) already exists.

/*INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 35158749, 8, '2/10/2020', '1/14/2021');*/
--[2021-06-30 04:40:40] [23503] ERROR: insert or update on table "gr01_alquila" violates foreign key constraint "fk_gr01_alquila_cliente"
--[2021-06-30 04:40:40] Detail: Key (tipo_doc, nro_doc)=(DNI, 35158749) is not present in table "gr01_cliente".

INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('RUC', 35158749, 8, '2/10/2020', '1/14/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('RUC', 39523827, 10, '2/8/2019', '11/20/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('DNI', 27605420, 10, '10/23/2018', '12/15/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta) VALUES ('RUC', 35158749, 10,'10/21/2019', '6/10/2021');

-- tipo_doc + nro_doc de cada Cliente
--1 'DNI', 25930772,
--2 'DNI', 40571911,
--3 'DNI', 27605420,
--4 'DNI', 27605222,
--5 'RUC', 39523827,
--6 'RUC', 30460675,
--7 'RUC', 35158749,
--8 'RUC', 37425539,
--9 'DNI', 39768674,
--10 'DNI', 28449809,
