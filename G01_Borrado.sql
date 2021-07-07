/**==================================================================================================================*/
--                                              DROP TABLES
/**==================================================================================================================*/




DROP TABLE IF EXISTS GR01_ALQUILA CASCADE;

DROP TABLE IF EXISTS GR01_CLIENTE CASCADE;

DROP TABLE IF EXISTS GR01_OFICINA_REG CASCADE;

DROP TABLE IF EXISTS GR01_SALA_CONVENCION CASCADE;

DROP TABLE IF EXISTS GR01_OFICINA CASCADE;


/**==================================================================================================================*/
--                                              DROP VIEWS
/**==================================================================================================================*/

DROP VIEW IF EXISTS GR01_V_OFICINAS_REG CASCADE;

DROP VIEW IF EXISTS GR01_V_PROMEDIO CASCADE;

/**==================================================================================================================*/
--                                          DROP TRIGGERS FUNCTION
/**==================================================================================================================*/

DROP FUNCTION IF EXISTS TRFN_GR01_OFICINAS_CLIENTE() CASCADE;

DROP FUNCTION IF EXISTS TRFN_GR01_V_OFICINA_REGULAR() CASCADE;

DROP FUNCTION IF EXISTS TRFN_GR01_V_SALA_CONVENCION() CASCADE;
