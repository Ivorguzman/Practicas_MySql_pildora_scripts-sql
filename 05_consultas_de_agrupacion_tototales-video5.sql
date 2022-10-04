
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
select SECCIÓN, PRECIO from productos group by SECCIÓN ;


-- *********************************************************************************************************************************
--                              FUNCIONES DE AGREGADOS SQL ==> SUM()  suma los valores de un campo
-- *********************************************************************************************************************************

	-- CAMPO DE AGRUPACION = SECCIÓN
	-- CAMPO DEL CALCULO = PRECIO

-- aplicando la funcion de agregado SQL sum()  al campo de calculo (PRECIO) ==> sum(PRECIO)
select SECCIÓN, sum(PRECIO) from productos group by SECCIÓN ;


-- los  alias permiten  cambiar el nombre a un campo a nivel de consulta si afectar la estructura de la tabla

-- alias (as) ==> *** sum(PRECIO) as TOTAL_SECCIÓN *** RENOMBRA EL CAMPO SOLO A NIVEL DE CONSULTA.
select SECCIÓN, sum(PRECIO) as TOTAL_SECCIÓN from productos group by SECCIÓN  order by TOTAL_SECCIÓN;
select SECCIÓN, sum(PRECIO) as TOTAL_SECCIÓN from productos group by SECCIÓN  order by TOTAL_SECCIÓN desc;




-- *********************************************************************************************************************************
--                              FUNCIONES DE AGREGADOS SQ ==> AVG ()  calcula promedio de un campo  
-- *********************************************************************************************************************************
    -- Consulta de la media de los articulos de DEPORTE y CEREMICA 
	-- CAMPO DE AGRUPACION = SECCIÓN
	-- CAMPO DEL CALCULO = PRECIO
    
    -- agrupado  por secciones(SECCIÓN)
    select SECCIÓN, avg(PRECIO) as PRECIO_PROMEDIO from productos group by SECCIÓN;
    
    --  agrupado  por secciones(SECCIÓN) y ordenado por precio ==> (PRECIO_PROMEDIO)  en forma decendente
    select SECCIÓN, avg(PRECIO) as PRECIO_PROMEDIO from productos group by SECCIÓN order by PRECIO_PROMEDIO desc;
         
    -- En las consultas de  agrupacion para establecer criterios,  se utiliza la clausula HAVING  en vez de la clausula WHERE
    -- como decalracion formal Se utiliza el operador logico or en vez del operador logico and  aunque paresca contra intuitivo.
    select SECCIÓN, avg(PRECIO) as PRECIO_PROMEDIO from productos group by SECCIÓN  having  SECCIÓN='CONFECCIÓN' or SECCIÓN='FERRETERIA';
    
    -- Ordenandolo por articulos  en forma acendente
    select SECCIÓN , avg(PRECIO) as PRECIO_PROMEDIO from productos group by SECCIÓN having SECCIÓN='CONFECCIÓN' or SECCIÓN='FERRETERIA' order by  PRECIO_PROMEDIO;

  
-- *********************************************************************************************************************************
--                              FUNCIONES DE AGREGADOS SQL ==> COUNT() cuenta los registros de un campo
-- *********************************************************************************************************************************

    -- Nota: la funcion COUNT() no cuenta registros en blanco ==> codigo cliente por si no e tiene informacion del campo EMPRESA al momentro de consultar ;
    
    -- CAMPO DE AGRUPACION = POBLACIÓN
	-- CAMPO DEL CALCULO = CÓDIGOCLIENTE ==> (si no e tiene informacion del campo EMPRESA )
    -- consulta que muestra cuantos cliente se tiene por póblacion.
    
    -- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE
    select POBLACIÓN, count(CÓDIGOCLIENTE) as CLIENTES_POBLACION from clientes  group by POBLACIÓN ;
     
	-- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE en forma decendente
	select POBLACIÓN, count(CÓDIGOCLIENTE) as CLIENTES_POBLACION from clientes  group by POBLACIÓN order by CLIENTES_POBLACION desc;
    
    
    -- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE, mostrando CÓDIGOCLIENTE por POBLACIÓN y ordenados por clientes en forma decendente
    select POBLACIÓN, count(CÓDIGOCLIENTE) as CLIENTES_POBLACION, RESPONSABLE from clientes  group by POBLACIÓN order by CLIENTES_POBLACION desc;
    
	 -- Consulta agrupada por POBLACIÓN contada por CÓDIGOCLIENTE y agrupada por POBLACIÓN en forma decendentey ordenados por clientes en forma decendente donde RESPONSABLE > 10
     select  POBLACIÓN, count(CÓDIGOCLIENTE) as CLIENTES_POBLACION , RESPONSABLE , CÓDIGOCLIENTE from clientes  group by POBLACIÓN having CLIENTES_POBLACION >= 10  or CLIENTES_POBLACION >= 5;
     
     -- Consulta agrupada por POBLACIÓN contada por CÓDIGOCLIENTE y agrupada por POBLACIÓN en forma decendentey ordenados por clientes en forma decendente donde RESPONSABLE  esten entre 2 y 4
	  select  POBLACIÓN, count(CÓDIGOCLIENTE) as CLIENTES_POBLACION , RESPONSABLE , CÓDIGOCLIENTE from clientes  group by POBLACIÓN having CLIENTES_POBLACION between 2 and 4 ;
      
      -- Consulta agrupada por POBLACIÓN contada por CÓDIGOCLIENTE y agrupada por POBLACIÓN en forma decendentey ordenados por clientes en forma decendente donde RESPONSABLE  esten entre 2 y 4
	  select  POBLACIÓN, count(CÓDIGOCLIENTE) as CLIENTES_POBLACION , RESPONSABLE , CÓDIGOCLIENTE from clientes  group by POBLACIÓN having CLIENTES_POBLACION >= 1 and  CLIENTES_POBLACION <= 3;


-- *********************************************************************************************************************************
--                              FUNCIONES DE AGREGADOS SQL ==> -- MAX()   devuelve el maximo de un campo
-- *********************************************************************************************************************************

-- Consulta del precio del articulo más caro de cada seccion de confeccion

	-- CAMPO DE AGRUPACION = SECCIÓN
	-- CAMPO DEL CALCULO = PRECIO
    
    select SECCIÓN, max(PRECIO) as PRECIO_ARTICULO_MAS_CARO, NOMBREARTÍCULO,CÓDIGOARTÍCULO from productos group by SECCIÓN;
    
   
    select SECCIÓN, CÓDIGOARTÍCULO, NOMBREARTÍCULO, max(PRECIO) as PRECIO_ARTICULO_MAS_CARO from productos where SECCIÓN='CONFECCIÓN'; -- ojo
    
	select SECCIÓN, max(PRECIO) as PRECIO_ARTICULO_MAS_CARO,NOMBREARTÍCULO,CÓDIGOARTÍCULO from productos where SECCIÓN='CONFECCIÓN' group by SECCIÓN; -- ojo
    
    
    select SECCIÓN, PRECIO as PRECIO_ARTICULO_MAS_CARO, NOMBREARTÍCULO, CÓDIGOARTÍCULO from productos where SECCIÓN='CONFECCIÓN';
    
    
-- *********************************************************************************************************************************
--                              FUNCIONES DE AGREGADOS SQL ==>  -- MIN()   devuelve el minimo de un campo
-- *********************************************************************************************************************************

-- Consulta del precio del articulo más caro de cada seccion de confeccion

	-- CAMPO DE AGRUPACION = SECCIÓN
	-- CAMPO DEL CALCULO = PRECIO
    
    select SECCIÓN, CÓDIGOARTÍCULO, NOMBREARTÍCULO, min(PRECIO) as PRECIO_ARTICULO_MAS_VARATO from productos;
    
    select SECCIÓN, CÓDIGOARTÍCULO, NOMBREARTÍCULO, min(PRECIO) as PRECIO_ARTICULO_MAS_VARATO from productos group by SECCIÓN;
    
    
    
    
    
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

select DIRECCIÓN,TELÉFONO,POBLACIÓN as Residencia  from clientes order by  Residencia desc



                               -- Ejerccio 2 --
                               
-- Realizar una consulta que muestre que poblaciones hay en la tabla “Clientes”.






























