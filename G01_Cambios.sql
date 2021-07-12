--╔═══════════════════════════════╗
--║ INDICE                        ║
--║ - LINEA: 11 INSERTS           ║
--║ - LINEA: 181 PUNTO A EJER 1   ║
--║ - LINEA: 379 PUNTO B EJER 2   ║
--║ - LINEA: 497 PUNTO A EJER 1   ║
--║ - LINEA: 532 PUNTO B EJER 2   ║
--╚═══════════════════════════════╝

--╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
--║                                                 INSERTS                                                            ║
--╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝

-- GR01_CLIENTE
INSERT INTO GR01_CLIENTE (tipo_doc, nro_doc, nombre, e_mail, apellido)
VALUES ('DNI', 25930772, 'Prue', 'pchattell0@livejournal.com', 'Chattell');
INSERT INTO GR01_CLIENTE (tipo_doc, nro_doc, nombre, e_mail, apellido)
VALUES ('DNI', 40571911, 'Andriette', 'ablaby1@tinyurl.com', 'Blaby');
INSERT INTO GR01_CLIENTE (tipo_doc, nro_doc, nombre, e_mail, apellido)
VALUES ('DNI', 27605420, 'Penn', 'ppapaminas2@jugem.jp', 'Papaminas');
INSERT INTO GR01_CLIENTE (tipo_doc, nro_doc, nombre, e_mail, apellido)
VALUES ('DNI', 27605222, 'Harwell', 'hjobes3@zimbio.com', 'Jobes');
INSERT INTO GR01_CLIENTE (tipo_doc, nro_doc, nombre, e_mail, apellido)
VALUES ('RUC', 39523827, 'Mellicent', 'mpuleque4@g.co', 'Puleque');
INSERT INTO GR01_CLIENTE (tipo_doc, nro_doc, nombre, e_mail, apellido)
VALUES ('RUC', 30460675, 'Domini', 'dduckwith5@gov.uk', 'Duckwith');
INSERT INTO GR01_CLIENTE (tipo_doc, nro_doc, nombre, e_mail, apellido)
VALUES ('RUC', 35158749, 'Elora', 'eallom6@plala.or.jp', 'Allom');
INSERT INTO GR01_CLIENTE (tipo_doc, nro_doc, nombre, e_mail, apellido)
VALUES ('RUC', 37425539, 'Andee', 'ayarwood7@digg.com', 'Yarwood');
INSERT INTO GR01_CLIENTE (tipo_doc, nro_doc, nombre, e_mail, apellido)
VALUES ('DNI', 39768674, 'Florida', 'fbottell8@ftc.gov', 'Bottell');
INSERT INTO GR01_CLIENTE (tipo_doc, nro_doc, nombre, e_mail, apellido)
VALUES ('DNI', 284498096, 'Dionisio', 'dmellsop9@blogger.com', 'Mellsop');

--GR01_OFICINA
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o)
VALUES (1, 93, 8, 55.54, 'R');
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o)
VALUES (2, 47, 29, 58.14, 'R');
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o)
VALUES (3, 90, 1, 24.67, 'R');
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o)
VALUES (4, 57, 22, 59.83, 'R');
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o)
VALUES (5, 41, 32, 89.59, 'R');
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o)
VALUES (6, 80, 75, 94.94, 'C');
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o)
VALUES (7, 14, 49, 25.4, 'C');
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o)
VALUES (8, 45, 61, 88.64, 'C');
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o)
VALUES (9, 34, 50, 25.71, 'C');
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o)
VALUES (10, 25, 19, 35.21, 'C');
INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o)
VALUES (11, 90, 32, 89.59, 'R');

--GR01_OFICINA_REG
INSERT INTO GR01_OFICINA_REG (id_oficina, cant_escritorios, cant_pc)
VALUES (1, 7, 16);
INSERT INTO GR01_OFICINA_REG (id_oficina, cant_escritorios, cant_pc)
VALUES (2, 1, 18);
INSERT INTO GR01_OFICINA_REG (id_oficina, cant_escritorios, cant_pc)
VALUES (3, 17, 4);
INSERT INTO GR01_OFICINA_REG (id_oficina, cant_escritorios, cant_pc)
VALUES (4, 23, 25);
INSERT INTO GR01_OFICINA_REG (id_oficina, cant_escritorios, cant_pc)
VALUES (5, 29, 17);
INSERT INTO GR01_OFICINA_REG (id_oficina, cant_escritorios, cant_pc)
VALUES (11, 11, 4);

--GR01_SALA_CONVENCION
INSERT INTO GR01_SALA_CONVENCION (id_oficina, cant_sillas, cant_pantallas)
VALUES (6, 50, 2);
INSERT INTO GR01_SALA_CONVENCION (id_oficina, cant_sillas, cant_pantallas)
VALUES (7, 15, 3);
INSERT INTO GR01_SALA_CONVENCION (id_oficina, cant_sillas, cant_pantallas)
VALUES (8, 34, 4);
INSERT INTO GR01_SALA_CONVENCION (id_oficina, cant_sillas, cant_pantallas)
VALUES (9, 8, 8);
INSERT INTO GR01_SALA_CONVENCION (id_oficina, cant_sillas, cant_pantallas)
VALUES (10, 94, 11);

--GR01_ALQUILA
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('DNI', 25930772, 1, '11/1/2019', '12/31/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('DNI', 40571911, 1, '10/1/2019', '8/6/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('DNI', 27605420, 1, '7/28/2019', '9/7/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('DNI', 27605222, 1, '2/21/2020', '4/11/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('RUC', 39523827, 1, '6/28/2019', '6/4/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('RUC', 30460675, 1, '10/9/2018', '8/25/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('RUC', 35158749, 1, '2/27/2020', '11/11/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('RUC', 37425539, 1, '2/6/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('DNI', 284498096, 1, '1/30/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('DNI', 39768674, 1, '10/15/2019');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('DNI', 25930772, 3, '10/19/2019');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('DNI', 40571911, 3, '3/30/2020', '12/27/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('DNI', 27605420, 3, '12/30/2019', '6/18/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('DNI', 27605222, 3, '7/8/2019', '4/1/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('RUC', 39523827, 3, '12/15/2018', '7/28/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('RUC', 30460675, 3, '12/30/2019', '5/8/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('RUC', 35158749, 3, '9/25/2019', '12/18/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('RUC', 37425539, 3, '12/21/2018', '5/3/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('DNI', 39768674, 3, '1/15/2019');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('DNI', 284498096, 3, '4/18/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('DNI', 25930772, 9, '8/24/2018', '1/21/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('DNI', 40571911, 9, '11/13/2018', '8/23/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('DNI', 27605420, 9, '8/17/2019', '1/31/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('DNI', 27605222, 9, '9/5/2018', '6/15/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('RUC', 39523827, 9, '11/14/2018', '8/20/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('RUC', 30460675, 9, '4/4/2020', '5/16/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('RUC', 35158749, 9, '12/1/2019', '1/12/2021');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde, fecha_hasta)
VALUES ('RUC', 37425539, 9, '3/6/2019', '12/29/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('DNI', 39768674, 9, '10/17/2018');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('DNI', 284498096, 9, '2/14/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('DNI', 284498096, 10, '10/21/2019');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('DNI', 284498096, 2, '12/12/2018');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('DNI', 39768674, 2, '6/9/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('RUC', 30460675, 2, '8/11/2018');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('RUC', 30460675, 4, '1/6/2019');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('DNI', 27605420, 4, '3/2/2019');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('RUC', 35158749, 4, '8/12/2019');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('DNI', 40571911, 5, '12/24/2018');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('DNI', 39768674, 5, '12/28/2019');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('DNI', 40571911, 6, '8/2/2018');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('RUC', 37425539, 6, '5/18/2019');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('DNI', 25930772, 7, '6/19/2020');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('DNI', 27605420, 7, '9/10/2018');
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('DNI', 27605420, 8, '9/10/2018');

--╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
--║                                            A.TRIGGERS Y SERVICIOS                                                  ║
--╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝

--┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
--│///////////////////////////////////////////// Ejercicio 1 //////////////////////////////////////////////////////////│
--└────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
/*--------------------------------------------------------------------------------------------------------------------
  1) Se le agregara columna cantidad_salas (cantidad salas convención) y cantidad_oficinas(cantidad oficinas regulares)
a la tabla CLIENTE.
  Es necesario mantener actualizadas las columnas cantidad_salas y cantidad_oficinas con la cantidad de salas de
convención y oficinas regulares que cada cliente tiene alquiladas por tiempo indeterminado (es decir que aún no tienen
fecha de fin).
  Se debe realizar con triggers FOR STATEMENT.
  --------------------------------------------------------------------------------------------------------------------*/

ALTER TABLE gr01_cliente
    ADD COLUMN cantidad_salas integer;

ALTER TABLE gr01_cliente
    ADD COLUMN cantidad_oficinas integer;

/*-------------------------------------------------------------------------------------------------------------------
  Inicialmente todas las tuplas en la tabla GR01_CLIENTE tendran valor null en las nuevas columnas.
  Para asignar el valor correspondiente a cada tupla en ambas columnas se ejecuta lo siguiente.
  --------------------------------------------------------------------------------------------------------------------*/

UPDATE gr01_cliente c
SET cantidad_salas    = (SELECT count(*)
                         FROM gr01_alquila a
                         WHERE a.nro_doc = c.nro_doc
                           AND c.tipo_doc = a.tipo_doc
                           AND fecha_hasta IS NULL
                           AND a.id_oficina IN (SELECT id_oficina
                                                FROM gr01_oficina
                                                WHERE tipo_o = 'C'))
  , cantidad_oficinas = (SELECT count(*)
                         FROM gr01_alquila a
                         WHERE a.nro_doc = c.nro_doc
                           AND c.tipo_doc = a.tipo_doc
                           AND fecha_hasta IS NULL
                           AND a.id_oficina IN (SELECT id_oficina
                                                FROM gr01_oficina
                                                WHERE tipo_o = 'R'));
/*--------------------------------------------------------------------------------------------------------------------
 Al añadir o modificar datos (alquila), las columnas se mantendran actualizadas por la siguiente funcion de trigger
  --------------------------------------------------------------------------------------------------------------------*/
CREATE OR REPLACE FUNCTION TRFN_GR01_OFICINAS_CLIENTE()
    RETURNS TRIGGER AS
$$
DECLARE
    cant_salas_encontradas    integer;
    cant_oficinas_encontradas integer;
    cliente_alquila           record;
BEGIN

    IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE') THEN
        FOR cliente_alquila IN
            SELECT DISTINCT tipo_doc, nro_doc FROM new_tbl WHERE new_tbl.fecha_hasta IS NULL
            LOOP
                SELECT count(*)
                INTO cant_salas_encontradas
                FROM new_tbl a
                WHERE a.nro_doc = cliente_alquila.nro_doc
                  AND cliente_alquila.tipo_doc = a.tipo_doc
                  AND fecha_hasta IS NULL
                  AND a.id_oficina IN (SELECT id_oficina
                                       FROM gr01_oficina
                                       WHERE tipo_o = 'C');
                SELECT count(*)
                INTO cant_oficinas_encontradas
                FROM new_tbl a
                WHERE a.nro_doc = cliente_alquila.nro_doc
                  AND cliente_alquila.tipo_doc = a.tipo_doc
                  AND fecha_hasta IS NULL
                  AND a.id_oficina IN (SELECT id_oficina
                                       FROM gr01_oficina
                                       WHERE tipo_o = 'R');
                UPDATE gr01_cliente
                SET cantidad_oficinas = cantidad_oficinas + cant_oficinas_encontradas,
                    cantidad_salas    = cantidad_salas + cant_salas_encontradas
                WHERE tipo_doc = cliente_alquila.tipo_doc
                  AND nro_doc = cliente_alquila.nro_doc;
            END LOOP;
    END IF;

    IF (TG_OP = 'DELETE' OR TG_OP = 'UPDATE') THEN
        FOR cliente_alquila IN
            SELECT DISTINCT tipo_doc, nro_doc FROM old_tbl WHERE old_tbl.fecha_hasta IS NULL
            LOOP
                SELECT count(*)
                INTO cant_salas_encontradas
                FROM old_tbl a
                WHERE a.nro_doc = cliente_alquila.nro_doc
                  AND cliente_alquila.tipo_doc = a.tipo_doc
                  AND fecha_hasta IS NULL
                  AND a.id_oficina IN (SELECT id_oficina
                                       FROM gr01_oficina
                                       WHERE tipo_o = 'C');
                SELECT count(*)
                INTO cant_oficinas_encontradas
                FROM old_tbl a
                WHERE a.nro_doc = cliente_alquila.nro_doc
                  AND cliente_alquila.tipo_doc = a.tipo_doc
                  AND fecha_hasta IS NULL
                  AND a.id_oficina IN (SELECT id_oficina
                                       FROM gr01_oficina
                                       WHERE tipo_o = 'R');
                UPDATE gr01_cliente
                SET cantidad_oficinas = cantidad_oficinas - cant_oficinas_encontradas,
                    cantidad_salas    = cantidad_salas - cant_salas_encontradas
                WHERE tipo_doc = cliente_alquila.tipo_doc
                  AND nro_doc = cliente_alquila.nro_doc;
            END LOOP;
    END IF;
    RETURN NULL;
END
$$
    LANGUAGE 'plpgsql';

/*========== TRIGGERS ==========*/

CREATE TRIGGER TR_GR01_ALQUILA_INS
    AFTER INSERT
    ON GR01_ALQUILA
    REFERENCING NEW TABLE AS new_tbl
    FOR EACH STATEMENT
EXECUTE PROCEDURE TRFN_GR01_OFICINAS_CLIENTE();

CREATE TRIGGER TR_GR01_ALQUILA_DEL
    AFTER DELETE
    ON GR01_ALQUILA
    REFERENCING OLD TABLE AS old_tbl
    FOR EACH STATEMENT
EXECUTE PROCEDURE TRFN_GR01_OFICINAS_CLIENTE();

CREATE TRIGGER TR_GR01_ALQUILA_UPD
    AFTER UPDATE
    ON GR01_ALQUILA
    REFERENCING OLD TABLE AS old_tbl NEW TABLE AS new_tbl
    FOR EACH STATEMENT
EXECUTE PROCEDURE TRFN_GR01_OFICINAS_CLIENTE();

/*----------------------------------------------------------------------------------------------------------------------
 Al añadir datos (cliente) las columnas se inicilizaran en 0.
----------------------------------------------------------------------------------------------------------------------*/

CREATE OR REPLACE FUNCTION TRFN_GR01_CLIENTE()
    RETURNS TRIGGER AS
$$
BEGIN
    UPDATE gr01_cliente c
    SET cantidad_salas    = 0,
        cantidad_oficinas = 0
    WHERE (c.nro_doc, c.tipo_doc) IN (SELECT nro_doc, tipo_doc
                                      FROM new_tbl);
    RETURN NULL;
END
$$
    LANGUAGE 'plpgsql';


/*========== TRIGGER ==========*/

CREATE TRIGGER TR_GR01_CLIENTE_INS
    AFTER INSERT
    ON GR01_CLIENTE
    REFERENCING NEW TABLE AS new_tbl
    FOR EACH STATEMENT
EXECUTE PROCEDURE TRFN_GR01_CLIENTE();

/*----------------------------------------------------------------------------------------------------------------------
                                    Consultas para comprobar actualizacion automática.

INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('RUC', 37425539, 8, '7/28/2018'),
       ('DNI', 40571911, 8, '4/20/2020'),
       ('RUC', 39523827, 8, '12/7/2018'),
       ('RUC', 39523827, 10, '2/8/2019'),
       ('RUC', 39523827, 5, '12/7/2018'),
       ('DNI', 39768674, 8, '10/9/2018'),
       ('DNI', 27605420, 10, '10/23/2018'),
       ('RUC', 35158749, 8, '2/10/2020'),
       ('RUC', 35158749, 5, '2/10/2020'),
       ('RUC', 35158749, 10, '10/21/2019');

  --añadir un nuevo cliente con las nuevas columnas inicializadas en 0.
INSERT INTO GR01_CLIENTE (tipo_doc, nro_doc, nombre, e_mail, apellido)
VALUES ('DNI', 11223344, 'Fernando', 'strades9@main.com', 'Tenembaun');

  --añadir alquileres al nuevo cliente y actualizar automaticamente los datos. 2 salas y 1 oficina regular
INSERT INTO GR01_ALQUILA (tipo_doc, nro_doc, id_oficina, fecha_desde)
VALUES ('DNI', 11223344, 8, '7/28/2018'),
       ('DNI', 11223344, 10, '4/20/2020'),
       ('DNI', 11223344, 11, '4/20/2020');

  --eliminar un alquiler y restar una sala al cliente.
  DELETE FROM GR01_ALQUILA WHERE nro_doc = 37425539 AND tipo_doc = 'RUC' AND id_oficina = 6;

   --eliminar todos los alquileres a un cliente.
 DELETE FROM GR01_ALQUILA WHERE nro_doc = 40571911 AND tipo_doc = 'DNI';
----------------------------------------------------------------------------------------------------------------------*/
--┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
--│///////////////////////////////////////////// Ejercicio 2 //////////////////////////////////////////////////////////│
--└────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
/*----------------------------------------------------------------------------------------------------------------------
  Utilizando 2 vistas V_OFICINA_REGULAR y V_SALA_CONVENCION que contienen todos los datos de las oficinas regulares o
de las salas de convención respectivamente, construir los triggers INSTEAD OF necesarios para mantener actualizadas
las tablas de OFICINA, OFICINA_REG y SALA_CONVENSION de manera de respetar el diseño de datos de la jerarquía.
----------------------------------------------------------------------------------------------------------------------*/

--**************************************** CREACION DE VISTAS ***************************************************

CREATE VIEW GR01_V_OFICINA_REGULAR AS
SELECT r.id_oficina, o.superficie, o.cant_max_personas, o.monto_alquiler, r.cant_escritorios, r.cant_pc
FROM GR01_OFICINA o NATURAL JOIN GR01_OFICINA_REG r;

CREATE VIEW GR01_V_SALA_CONVENCION AS
SELECT s.id_oficina, o.superficie, o.cant_max_personas, o.monto_alquiler, s.cant_pantallas, s.cant_sillas
FROM GR01_OFICINA o NATURAL JOIN GR01_SALA_CONVENCION s;

-- Las vistas NO son actualizables a menos que se utilizen triggers INSTEAD OF

--************************************* CREACION DE TRIGGERS INSTEAD OF ******************************************

CREATE OR REPLACE FUNCTION TRFN_GR01_V_OFICINA_REGULAR()
    RETURNS TRIGGER AS
$$
BEGIN
    IF (TG_OP = 'UPDATE') THEN ---------------------------------------------------------------------------------------
        UPDATE GR01_OFICINA
        SET superficie = NEW.superficie,cant_max_personas = NEW.cant_max_personas, monto_alquiler = NEW.monto_alquiler
            WHERE id_oficina = NEW.id_oficina;
        UPDATE GR01_OFICINA_REG SET cant_escritorios = NEW.cant_escritorios, cant_pc = NEW.cant_pc
            WHERE id_oficina = NEW.id_oficina;

    ELSIF (TG_OP = 'INSERT') THEN ------------------------------------------------------------------------------------
        INSERT INTO GR01_OFICINA (ID_OFICINA, SUPERFICIE, CANT_MAX_PERSONAS, MONTO_ALQUILER, TIPO_O)
        VALUES (NEW.id_oficina, NEW.superficie, NEW.cant_max_personas, NEW.monto_alquiler, 'R');

        INSERT INTO gr01_oficina_reg (id_oficina, cant_escritorios, cant_pc)
        VALUES (NEW.id_oficina, NEW.cant_escritorios, NEW.cant_pc);

    ELSE -------------------------------------------------------------------------------------------------------------
        DELETE FROM gr01_oficina WHERE id_oficina = old.id_oficina;
    END IF;
    RETURN NULL;
END;
$$
    LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION TRFN_GR01_V_SALA_CONVENCION()
    RETURNS TRIGGER AS
$$
BEGIN
    IF (TG_OP = 'UPDATE') THEN -----------------------------------------------------------------------------------------
        UPDATE GR01_OFICINA
        SET superficie        = NEW.superficie,
            cant_max_personas = NEW.cant_max_personas,
            monto_alquiler    = NEW.monto_alquiler
        WHERE id_oficina = NEW.id_oficina;
        UPDATE GR01_SALA_CONVENCION
        SET cant_sillas    = NEW.cant_sillas,
            cant_pantallas = NEW.cant_pantallas
        WHERE id_oficina = NEW.id_oficina;
    ELSIF (TG_OP = 'INSERT') THEN --------------------------------------------------------------------------------------
        INSERT INTO GR01_OFICINA (id_oficina, superficie, cant_max_personas, monto_alquiler, tipo_o)
        VALUES (NEW.id_oficina, NEW.superficie, NEW.cant_max_personas, NEW.monto_alquiler, 'C');
        INSERT INTO GR01_SALA_CONVENCION (id_oficina, cant_pantallas, cant_sillas)
        VALUES (NEW.id_oficina, NEW.cant_pantallas, NEW.cant_sillas);
    ELSE ---------------------------------------------------------------------------------------------------------------
        DELETE FROM GR01_OFICINA WHERE id_oficina = old.id_oficina;
    END IF;
    RETURN NULL;
END;
$$
    LANGUAGE 'plpgsql';

/*========== TRIGGERS ==========*/

CREATE TRIGGER TR_GR01_V_SALA_CONVENCION
    INSTEAD OF INSERT OR UPDATE OR DELETE
    ON GR01_V_SALA_CONVENCION
    FOR EACH ROW
EXECUTE PROCEDURE TRFN_GR01_V_SALA_CONVENCION();

CREATE TRIGGER TR_GR01_V_OFICINA_REGULAR
    INSTEAD OF INSERT OR UPDATE OR DELETE
    ON GR01_V_OFICINA_REGULAR
    FOR EACH ROW
EXECUTE PROCEDURE TRFN_GR01_V_OFICINA_REGULAR();


/*----------------------------------------------------------------------------------------------------------------------
                                                Consultas de comprobación:
-- SELECT DE VISTAS.
SELECT * FROM GR01_V_OFICINA_REGULAR;
SELECT * FROM GR01_V_SALA_CONVENCION;

-- INGRESAR DATOS DESDE VISTA
INSERT INTO GR01_V_OFICINA_REGULAR (id_oficina, superficie, cant_max_personas, monto_alquiler, cant_escritorios,cant_pc)
VALUES (600, 93, 8, 55.54, 2, 2);
INSERT INTO GR01_V_SALA_CONVENCION (id_oficina, superficie,cant_max_personas,monto_alquiler,cant_pantallas,cant_sillas)
VALUES (80, 100, 10, 104.50, 40, 200);

-- ACTUALIZAR DATOS DE VISTA
  UPDATE GR01_V_OFICINA_REGULAR SET superficie = 800,cant_escritorios = 18,cant_pc = 16 WHERE id_oficina = 600;
  UPDATE GR01_V_SALA_CONVENCION SET superficie = 800,cant_sillas = 500,cant_pantallas = 20 WHERE id_oficina = 80;

-- ELIMINAR DATOS DESDE VISTA
DELETE FROM GR01_V_OFICINA_REGULAR WHERE id_oficina = 600;
DELETE FROM GR01_V_SALA_CONVENCION WHERE id_oficina = 80;

  SELECT * FROM GR01_OFICINA;
  */

--╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
--║                                                    B.VISTAS                                                        ║
--╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝

--┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
--│///////////////////////////////////////////// Ejercicio 1 //////////////////////////////////////////////////////////│
--└────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
/*---------------------------------------------------------------------------------------------------------------------
  Construya una vista V_CLIENTES_COMP que contenga las oficinas que han sido alquiladas por todos los clientes.
  -------------------------------------------------------------------------------------------------------------------*/

CREATE VIEW GR01_V_CLIENTE_COMP AS
SELECT *
FROM GR01_OFICINA AS of
WHERE NOT EXISTS(SELECT 1
                 FROM GR01_CLIENTE AS cl
                 WHERE NOT EXISTS(SELECT 1
                                  FROM GR01_ALQUILA AS aq
                                  WHERE aq.id_oficina = of.id_oficina
                                    AND aq.nro_doc = cl.nro_doc
                                    AND aq.tipo_doc = cl.tipo_doc));

/* --------------------------------------------------------------------------------------------------------------------
La vista es actualizable porque tiene la primary key y no presenta ensambles ni funciones de grupo.

                                       Consultas de comprobacion:

SELECT *
FROM GR01_V_CLIENTE_COMP;

SELECT count(*)       --cantidad de alquileres de cada oficina
FROM gr01_alquila
GROUP BY id_oficina;

SELECT count(*)       --cantidad de clientes
FROM gr01_cliente;

  -------------------------------------------------------------------------------------------------------------------*/

--┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
--│///////////////////////////////////////////// Ejercicio 2 //////////////////////////////////////////////////////////│
--└────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
/* --------------------------------------------------------------------------------------------------------------------
 Construya una vista V_OFICINAS_REG que liste para cada oficina:
su identificador, su tipo, su superficie, su monto de alquiler y la cantidad promedio de escritorios por superficie.
  -------------------------------------------------------------------------------------------------------------------*/

/*--------------------------------------------------------------------------------------------------------------------
Aclaración: estos fueron las primeras ideas para obtener los datos necesarios.

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
---------------------------------------------------------------------------------------------------------------------*/

/*--------------------------------------------------------------------------------------------------------------------
                                                SOLUCION FINAL:

Se crea primero la vista GR01_V_PROMEDIO para poder obtener el promedio de escritos por superficie.
No es posible hacer esta vista actualizable porque es necesario proyectar atributos de las dos tablas involucradas y
utilizar funciones de agrupamiento.

Luego se crea la vista GR01_V_OFICINAS_REG, solicitada en el ejercicio, en la que se proyectan los atributos de la tabla
gr01_oficina y se hace un join para traer los resultados de la vista GR01_V_PROMEDIO.

La vista resultante no es actualizable, porque es necesario proyectar atributos de la tabla gr01_oficina y de la vista
GR01_V_PROMEDIO que, a su vez y como vimos anteriormente, no es actualizable.
  --------------------------------------------------------------------------------------------------------------------*/

CREATE VIEW GR01_V_PROMEDIO AS
SELECT superficie, AVG(cant_escritorios) as promedio
FROM gr01_oficina o
         JOIN gr01_oficina_reg r ON r.id_oficina = o.id_oficina
GROUP BY superficie;

CREATE VIEW GR01_V_OFICINAS_REG AS
SELECT id_oficina, monto_alquiler, tipo_o, v.superficie, v.promedio
FROM gr01_oficina o
         JOIN GR01_V_PROMEDIO v ON v.superficie = o.superficie;

/*---------------------------------------------------------------------------------------------------------------------
Consulta de comprobacion:

SELECT *
FROM GR01_V_OFICINAS_REG;

  Ambas Vistas no son actualizables porque presentan un ensamble de 2 tablas
---------------------------------------------------------------------------------------------------------------------*/