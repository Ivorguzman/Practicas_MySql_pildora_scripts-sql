
-- CONSULTAS DE AGRUPACION

-- Reralizán calculos por grupos (agrupados por criterios o campos) 
-- tipos de calculos : conteos, una media, sumas... ETC


-- FUNCIONES DE AGREGADOS SQL
   -- AVG ()  calcula promedio de un campo
   -- COUNT() cuenta los registros de un campo
   -- SUM()   suma los valores de un campo
   -- MAX()   devuelve el maximo de un campo
   -- MIN()   devuelve el minimo de un campo
   


-- metodo para realizar las consultas de agrupacion
 
-- se nececitan dos campos : 
		-- CAMPO DE AGRUPACION
        -- CAMPO DEL CALCULO


-- ****** EJERCICIO DE CONSULTA DA AGRUPACION *****

 
 
-- recuperando los registros por el campo de agrupacion (SECCÓN), y por el campo de lculo (PRECIO) . Y agrupados por  (SECCIÓN). ==> group by SECCIÓN
SELECT  SECCIÓN, PRECIO FROM  productos  GROUP BY SECCIÓN;


-- *********************************************************************************************************************************
--                              FUNCIONES DE AGREGADOS SQL ==> SUM()  suma los valores de un campo
-- *********************************************************************************************************************************

	-- CAMPO DE AGRUPACION = SECCIÓN
	-- CAMPO DEL CALCULO = PRECIO

-- aplicando la funcion de agregado SQL sum()  al campo de calculo (PRECIO) ==> sum(PRECIO)
SELECT SECCIÓN, SUM(PRECIO) FROM productos GROUP BY SECCIÓN ;


-- los  alias permiten  cambiar el nombre a un campo a nivel de consulta si afectar la estructura de la tabla

-- alias (as) ==> *** sum(PRECIO) as TOTAL_SECCIÓN *** RENOMBRA EL CAMPO SOLO A NIVEL DE CONSULTA.
SELECT SECCIÓN, SUM(PRECIO) AS TOTAL_SECCIÓN FROM productos GROUP BY SECCIÓN  ORDER BY TOTAL_SECCIÓN;
SELECT SECCIÓN, SUM(PRECIO) AS TOTAL_SECCIÓN FROM productos GROUP BY SECCIÓN  ORDER BY TOTAL_SECCIÓN DESC;




-- *********************************************************************************************************************************
--                              FUNCIONES DE AGREGADOS SQ ==> AVG ()  calcula promedio de un campo  
-- *********************************************************************************************************************************
    -- Consulta de la media de los articulos de DEPORTE y CEREMICA 
	-- CAMPO DE AGRUPACION = SECCIÓN
	-- CAMPO DEL CALCULO = PRECIO
    
    -- agrupado  por secciones(SECCIÓN)
    SELECT SECCIÓN, AVG(PRECIO) AS PRECIO_PROMEDIO FROM productos GROUP BY SECCIÓN;
    
    --  agrupado  por secciones(SECCIÓN) y ordenado por precio ==> (PRECIO_PROMEDIO)  en forma decendente
    SELECT SECCIÓN, AVG(PRECIO) AS PRECIO_PROMEDIO FROM productos GROUP BY SECCIÓN ORDER BY PRECIO_PROMEDIO DESC;
         
    -- En las consultas de  agrupacion para establecer criterios,  se utiliza la clausula HAVING  en vez de la clausula WHERE
    -- como decalracion formal Se utiliza el operador logico or en vez del operador logico and  aunque paresca contra intuitivo.
    SELECT SECCIÓN, AVG(PRECIO) AS PRECIO_PROMEDIO FROM productos GROUP BY SECCIÓN  HAVING  SECCIÓN='CONFECCIÓN' OR SECCIÓN='FERRETERIA';
    
    -- Ordenandolo por articulos  en forma acendente
    SELECT SECCIÓN , AVG(PRECIO) AS PRECIO_PROMEDIO FROM productos GROUP BY SECCIÓN HAVING SECCIÓN='CONFECCIÓN' OR SECCIÓN='FERRETERIA' ORDER BY  PRECIO_PROMEDIO;

  
-- *********************************************************************************************************************************
--                              FUNCIONES DE AGREGADOS SQL ==> COUNT() cuenta los registros de un campo
-- *********************************************************************************************************************************

    -- Nota: la funcion COUNT() no cuenta registros en blanco ==> codigo cliente por si no e tiene informacion del campo EMPRESA al momentro de consultar ;
    
    -- CAMPO DE AGRUPACION = POBLACIÓN
	-- CAMPO DEL CALCULO = CÓDIGOCLIENTE ==> (si no e tiene informacion del campo EMPRESA )
    -- consulta que muestra cuantos cliente se tiene por póblacion.
    
    -- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE
    SELECT POBLACIÓN, COUNT(CÓDIGOCLIENTE) AS CLIENTES_POBLACION FROM clientes  GROUP BY POBLACIÓN ;
     
	-- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE en forma decendente
	SELECT POBLACIÓN, COUNT(CÓDIGOCLIENTE) AS CLIENTES_POBLACION FROM clientes  GROUP BY POBLACIÓN ORDER BY CLIENTES_POBLACION DESC;
    
	-- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE, mostrando CÓDIGOCLIENTE por POBLACIÓN y ordenados por clientes en forma decendente
    SELECT POBLACIÓN, COUNT(CÓDIGOCLIENTE) AS CLIENTES_POBLACION, RESPONSABLE FROM clientes  GROUP BY POBLACIÓN ORDER BY CLIENTES_POBLACION  DESC;
    
    
    -- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE, mostrando CÓDIGOCLIENTE por POBLACIÓN y ordenados por clientes en forma decendente solo muetra el mayor gracias a la clausula  LIMIT 1 en conbinacion con DESC
    SELECT POBLACIÓN, COUNT(CÓDIGOCLIENTE) AS CLIENTES_POBLACION, RESPONSABLE FROM clientes  GROUP BY POBLACIÓN ORDER BY CLIENTES_POBLACION  DESC LIMIT 1;
    
    
	 -- Consulta agrupada por POBLACIÓN contada por CÓDIGOCLIENTE y agrupada por POBLACIÓN en forma decendentey ordenados por clientes en forma decendente donde RESPONSABLE > 10
     SELECT  POBLACIÓN, COUNT(CÓDIGOCLIENTE) AS CLIENTES_POBLACION , RESPONSABLE , CÓDIGOCLIENTE FROM clientes  GROUP BY POBLACIÓN HAVING CLIENTES_POBLACION >= 10  OR CLIENTES_POBLACION >= 5;
     
     -- Consulta agrupada por POBLACIÓN contada por CÓDIGOCLIENTE y agrupada por POBLACIÓN en forma decendentey ordenados por clientes en forma decendente donde RESPONSABLE  esten entre 2 y 4
	  SELECT  POBLACIÓN, COUNT(CÓDIGOCLIENTE) AS CLIENTES_POBLACION , RESPONSABLE , CÓDIGOCLIENTE FROM clientes  GROUP BY POBLACIÓN HAVING CLIENTES_POBLACION BETWEEN 2 AND 4 ;
      
      -- Consulta agrupada por POBLACIÓN contada por CÓDIGOCLIENTE y agrupada por POBLACIÓN en forma decendentey ordenados por clientes en forma decendente donde RESPONSABLE  esten entre 2 y 4
	  SELECT  POBLACIÓN, COUNT(CÓDIGOCLIENTE) AS CLIENTES_POBLACION , RESPONSABLE , CÓDIGOCLIENTE FROM clientes  GROUP BY POBLACIÓN HAVING CLIENTES_POBLACION >= 1 AND  CLIENTES_POBLACION <= 3;


-- *********************************************************************************************************************************
--                              FUNCIONES DE AGREGADOS SQL ==> -- MAX()   devuelve el maximo de un campo
-- *********************************************************************************************************************************

-- Consulta del precio del articulo más caro de cada seccion de confeccion

	-- CAMPO DE AGRUPACION = SECCIÓN
	-- CAMPO DEL CALCULO = PRECIO
    
    SELECT SECCIÓN, MAX(PRECIO) AS PRECIO_ARTICULO_MAS_CARO, 'NOMBREARTÍCULO,CÓDIGOARTÍCULO' FROM productos GROUP BY SECCIÓN;
    
   
    SELECT SECCIÓN, CÓDIGOARTÍCULO, NOMBREARTÍCULO, MAX(PRECIO) AS 'PRECIO_ARTICULO_MAS_CARO' FROM productos WHERE SECCIÓN='CONFECCIÓN'; -- ojo
    
	SELECT SECCIÓN, MAX(PRECIO) AS PRECIO_ARTICULO_MAS_CARO,NOMBREARTÍCULO,CÓDIGOARTÍCULO FROM productos WHERE SECCIÓN='CONFECCIÓN' GROUP BY SECCIÓN; -- ojo
    
    
    SELECT SECCIÓN, PRECIO AS PRECIO_ARTICULO_MAS_CARO, NOMBREARTÍCULO, CÓDIGOARTÍCULO FROM productos WHERE SECCIÓN='CONFECCIÓN';
    
    
-- *********************************************************************************************************************************
--                              FUNCIONES DE AGREGADOS SQL ==>  -- MIN()   devuelve el minimo de un campo
-- *********************************************************************************************************************************

-- Consulta del precio del articulo más caro de cada seccion de confeccion

	-- CAMPO DE AGRUPACION = SECCIÓN
	-- CAMPO DEL CALCULO = PRECIO
    
    SELECT SECCIÓN, CÓDIGOARTÍCULO, NOMBREARTÍCULO, MIN(PRECIO) AS 'PRECIO_ARTICULO_MAS_VARATO' FROM productos;
    
    SELECT SECCIÓN, CÓDIGOARTÍCULO, NOMBREARTÍCULO, MIN(PRECIO) AS 'PRECIO_ARTICULO_MAS_VARATO' FROM productos GROUP BY SECCIÓN;
    
    
    
    
    
-- *********************************************************************************************************************************
-- *********************************************************************************************************************************
--                                                 EJERCICIOS SQL 5
-- ************************************************************************************************************************ ********
-- *********************************************************************************************************************************



                               -- Ejerccio 1 --

-- Realizar una consulta sobre la tabla “Clientes” que muestre los campos
-- “Dirección”, “Teléfono” y “Población”. Este último debe aparecer en la consulta
-- con el nombre de “Residencia”. Los registros aparecerán ordenados
-- descendentemente por el campo “Población”.

SELECT DIRECCIÓN,TELÉFONO,POBLACIÓN AS Residencia  FROM clientes ORDER BY  Residencia DESC;



                               -- Ejerccio 2 --
                               
-- Realizar una consulta que muestre que poblaciones hay en la tabla “Clientes”.

SELECT POBLACIÓN FROM clientes;



								-- Ejerccio 3 --

-- Realizar una consulta de agrupación; Que muestre la suma del precio de los artículos de todas las secciones.
-- Mostrar en la consulta los campos sección y suma por sección.


	-- CAMPO DE AGRUPACION = seccion
	-- CAMPO DEL CALCULO = precio
    
    SELECT SECCIÓN, SUM(PRECIO) AS 'SUMA_POR_SECCION' FROM productos  GROUP BY SECCIÓN;
    
    
    
    
							 -- Ejerccio 4 --
                             
-- Realizar una consulta de agrupación que muestre la media del precio de todas las secciones menos de juguetería.
-- En la consulta deberán aparecer los campos Sección” y “Media por sección”.

-- CAMPO DE AGRUPACION =  SECCION
-- CAMPO DEL CALCULO = PRECIO

SELECT SECCIÓN, AVG(PRECIO) AS PRECIO_PROMEDIO FROM productos GROUP BY SECCIÓN ; 

SELECT SECCIÓN, AVG(PRECIO) AS MEDIA_POR_SECCION FROM productos  GROUP BY SECCIÓN HAVING SECCIÓN='CERÁMICA' OR SECCIÓN='CONFECCIÓN' OR SECCIÓN='OFICINA'  OR SECCIÓN='DEPORTES'  OR SECCIÓN='FERRETERÍA'  OR SECCIÓN='OFICINA';

    
                                          -- Ejerccio 5 --

-- 5. Realizar Una consulta que muestre cuantos artículos hay de la sección “Deportes”. 

 -- CAMPO DE AGRUPACION = SECCIÓN
 -- CAMPO DEL CALCULO = NOMBREARTÍCULO
 
                                 -- COUNT() cuenta los registros de un campo --

SELECT COUNT(NOMBREARTÍCULO) AS CANTIDAD_ARICULOS_DE_DEPORTE FROM productos WHERE SECCIÓN='DEPORTES'  ;
























