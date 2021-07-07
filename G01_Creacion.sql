/**==================================================================*/
--                     GRUPO 01 - ESQUEMA E1
/**==================================================================*/

-- tables
-- Table: ALQUILA
CREATE TABLE GR01_ALQUILA (
    tipo_doc char(3)  NOT NULL,
    nro_doc int  NOT NULL,
    id_oficina int  NOT NULL,
    fecha_desde date  NOT NULL,
    fecha_hasta date  NULL,
    CONSTRAINT PK_GR01_ALQUILA PRIMARY KEY (tipo_doc,nro_doc,id_oficina)
);

-- Table: CLIENTE
CREATE TABLE GR01_CLIENTE (
    tipo_doc char(3)  NOT NULL,
    nro_doc int  NOT NULL,
    nombre varchar(50)  NOT NULL,
    apellido varchar(50)  NOT NULL,
    e_mail varchar(50)  NOT NULL,
    CONSTRAINT PK_GR01_CLIENTE PRIMARY KEY (tipo_doc,nro_doc)
);

-- Table: OFICINA
CREATE TABLE GR01_OFICINA (
    id_oficina int  NOT NULL,
    superficie int  NOT NULL,
    cant_max_personas int  NOT NULL,
    monto_alquiler decimal(10,2)  NOT NULL,
    tipo_o char(1)  NOT NULL,
    CONSTRAINT PK_GR01_OFICINA PRIMARY KEY (id_oficina)
);

-- Table: OFICINA_REG
CREATE TABLE GR01_OFICINA_REG (
    id_oficina int  NOT NULL,
    cant_escritorios int  NOT NULL,
    cant_pc int  NOT NULL,
    CONSTRAINT PK_GR01_OFICINA_REG PRIMARY KEY (id_oficina)
);

-- Table: SALA_CONVENCION
CREATE TABLE GR01_SALA_CONVENCION (
    id_oficina int  NOT NULL,
    cant_sillas int  NOT NULL,
    cant_pantallas int  NOT NULL,
    CONSTRAINT PK_GR01_SALA_CONVENCION PRIMARY KEY (id_oficina)
);

-- foreign keys
-- Reference: FK_ALQUILA_CLIENTE (table: ALQUILA)
ALTER TABLE GR01_ALQUILA ADD CONSTRAINT FK_GR01_ALQUILA_CLIENTE
    FOREIGN KEY (tipo_doc, nro_doc)
    REFERENCES GR01_CLIENTE (tipo_doc, nro_doc)
    NOT DEFERRABLE
    INITIALLY IMMEDIATE
;

-- Reference: FK_ALQUILA_OFICINA (table: ALQUILA)
ALTER TABLE GR01_ALQUILA ADD CONSTRAINT FK_GR01_ALQUILA_OFICINA
    FOREIGN KEY (id_oficina)
    REFERENCES GR01_OFICINA (id_oficina)
    ON DELETE CASCADE
    INITIALLY IMMEDIATE
;

-- Reference: FK_OFICINA_REG_OFICINA (table: OFICINA_REG)
ALTER TABLE GR01_OFICINA_REG ADD CONSTRAINT FK_GR01_OFICINA_REG_OFICINA
    FOREIGN KEY (id_oficina)
    REFERENCES GR01_OFICINA (id_oficina)
    ON DELETE CASCADE
    INITIALLY IMMEDIATE
;

-- Reference: FK_SALA_CONVENCION_OFICINA (table: SALA_CONVENCION)
ALTER TABLE GR01_SALA_CONVENCION ADD CONSTRAINT FK_GR01_SALA_CONVENCION_OFICINA
    FOREIGN KEY (id_oficina)
    REFERENCES GR01_OFICINA (id_oficina)
    ON DELETE CASCADE
    INITIALLY IMMEDIATE
;

-- End of file.

/**======================================================================================*/