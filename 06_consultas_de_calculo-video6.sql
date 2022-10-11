                                        
                                        -- *********** CONSULTAS DE CALCULO **************
                                        
-- 1. Se caracterizan por ralizar sus operaciones en registros individuals no en grupos
-- 2. Es frecuente que en las consultas de calculo se utilize funciones SQL.
-- 3. hay dos grupos de funciones :
		-- A. Las estandar del lenguaje SQL.
        -- B. Las Propias de cada gestor de base de datos( MySql, Sql Server(MicroSoft), Sql Developer(Oracle), Acceses, etc.).
        

-- ******* Funciones comunes a SQL mas utilizadas:
	-- 1. Now() ==> Devuelve el dia y Hora Actual actual en el momento de  hacer la consulta
    -- 2. Datediff( , ) ==> Devuelve el no de dias entre dos fechas en una consulta
    -- 3. Date_format( %D-%M-%Y) ==> Permite formatear las fechas
    -- 4. Round() ==> Permite redondear resultados
    -- 5. Truncate() ==> 
    -- 6. Concat() ==> permite concatenar.
    
    
    -- ************************** CONSULTAS DE CAMPOS NUEVOS CALCULADOS ****************************
    
    --  Crear una consulta sobre la tabla productos donde se incremente le IVA (21%) a cada producto:
    
                                              --  ---- Funcion Round() ==> Permite redondear resultados .----
                                                          
    SELECT NOMBREARTÍCULO, SECCIÓN,ROUND(PRECIO,2) AS PRECIO, ROUND(PRECIO *.21,2) AS IVA ,ROUND(PRECIO + (PRECIO * 0.21),2) AS PRECIO_IVA FROM productos;
    
    --  Crear consulta que refleje un descuento de 5% en cada articulo
    SELECT NOMBREARTÍCULO, SECCIÓN,ROUND(PRECIO,2) AS PRECIO, ROUND(PRECIO *.21,2) AS IVA ,ROUND(PRECIO + (PRECIO * 0.21),2) AS PRECIO_IVA , ROUND( PRECIO*0.05,2) AS DESCUENTO,  ROUND(PRECIO +  (PRECIO * 0.21) - (PRECIO*0.05),2) AS PRECIO_CON_DESCUENTO FROM productos;
      
	--  Crear consulta que refleje un descuento de 5% en cada articulo ordenado por seccion
    SELECT NOMBREARTÍCULO, SECCIÓN,ROUND(PRECIO,2) AS PRECIO, ROUND(PRECIO *.21,2) AS IVA ,ROUND(PRECIO + (PRECIO * 0.21),2) AS PRECIO_IVA , ROUND( PRECIO*0.05,2) AS DESCUENTO,  ROUND(PRECIO +  (PRECIO * 0.21) - (PRECIO*0.05),2) AS PRECIO_CON_DESCUENTO   FROM productos ORDER BY  SECCIÓN;
    
	--  Crear consulta que refleje un descuento de 5% en cada articulo agrupado por precio mostrando el mas caro
    SELECT NOMBREARTÍCULO, SECCIÓN,ROUND(PRECIO,2) AS PRECIO, ROUND(PRECIO *.21,2) AS IVA ,ROUND(PRECIO + (PRECIO * 0.21),2) AS PRECIO_IVA , ROUND( PRECIO*0.05,2) AS DESCUENTO,  ROUND(PRECIO +  (PRECIO * 0.21) - (PRECIO*0.05),2) AS PRECIO_CON_DESCUENTO   FROM productos GROUP BY  PRECIO DESC LIMIT 1;
   
	--  Crear consulta que refleje un descuento de 5% en cada articulo agrupado por precio mostrando los ariculos que este entre 100 y 400 del mayor al menor
    SELECT NOMBREARTÍCULO, SECCIÓN,ROUND(PRECIO,2) AS PRECIO, ROUND(PRECIO *.21,2) AS IVA ,ROUND(PRECIO + (PRECIO * 0.21),2) AS PRECIO_IVA , ROUND( PRECIO*0.05,2) AS DESCUENTO,  ROUND(PRECIO +  (PRECIO * 0.21) - (PRECIO*0.05),2) AS PRECIO_CON_DESCUENTO   FROM productos GROUP BY  PRECIO DESC  HAVING  PRECIO BETWEEN 100 AND 400  ;
    
    --  Crear consulta que refleje un descuento de 5% en cada articulo de la seccion deporte
    SELECT NOMBREARTÍCULO,FECHA, SECCIÓN,ROUND(PRECIO,2) AS PRECIO, ROUND(PRECIO *.21,2) AS IVA ,ROUND(PRECIO + (PRECIO * 0.21),2) AS PRECIO_IVA , ROUND( PRECIO*0.05,2) AS DESCUENTO,  ROUND(PRECIO +  (PRECIO * 0.21) - (PRECIO*0.05),2) AS PRECIO_CON_DESCUENTO   FROM  productos    WHERE SECCIÓN='DEPORTES'  ;
     
	--  Crear consulta que refleje un descuento de 5% en cada articulo ordenado por precio mostrando los ariculos que este entre 100 y 400 del mayor al menor de la seccon deportes
    SELECT NOMBREARTÍCULO,FECHA, SECCIÓN,ROUND(PRECIO,2) AS PRECIO, ROUND(PRECIO *.21,2) AS IVA ,ROUND(PRECIO + (PRECIO * 0.21),2) AS PRECIO_IVA , ROUND( PRECIO*0.05,2) AS DESCUENTO,  ROUND(PRECIO +  (PRECIO * 0.21) - (PRECIO*0.05),2) AS PRECIO_MENOS_DESCUENTO    FROM  productos   WHERE SECCIÓN='DEPORTES' HAVING  PRECIO  BETWEEN 100 AND 400  ORDER BY PRECIO DESC  ;
     
    --  Crear consulta que refleje un descuento de 5% en cada articulo ordenado por precio mostrando el ariculos mas caro que este entre 100 y 400  seccon deportes
    SELECT NOMBREARTÍCULO,FECHA, SECCIÓN,ROUND(PRECIO,2) AS PRECIO, ROUND(PRECIO *.21,2) AS IVA ,ROUND(PRECIO + (PRECIO * 0.21),2) AS PRECIO_IVA , ROUND( PRECIO*0.05,2) AS DESCUENTO,  ROUND(PRECIO +  (PRECIO * 0.21) - (PRECIO*0.05),2) AS PRECIO_MENOS_DESCUENTO    FROM  productos   WHERE SECCIÓN='DEPORTES' HAVING  PRECIO  BETWEEN 100 AND 400  ORDER BY PRECIO DESC LIMIT 1;
   
   
     
                                                                 
                                                                 
                                                                 
										--  -**** Funcion Now() ==> Devuelve el dia y Hora Actual actual en el momento de  hacer la consulta.****
																			
       
       SELECT NOMBREARTÍCULO,SECCIÓN,PRECIO,FECHA FROM productos;
       
       
       SELECT NOMBREARTÍCULO,SECCIÓN,PRECIO,FECHA FROM productos WHERE SECCIÓN='DEPORTES';
       
       
       -- Utilizando funcion  Now() en la consulta
       SELECT NOMBREARTÍCULO,SECCIÓN,PRECIO, NOW() AS FECHA_DE_HOY FROM productos WHERE SECCIÓN='DEPORTES';
       
       
       
       
       
                      -- ****** datediff(  ,   ) ==> Devuelve el no de dias entre dos fechas en una consulta ******
      
      -- Nota: No se puede trabajar con los alias
      SELECT NOMBREARTÍCULO,SECCIÓN,PRECIO, NOW() AS 'FECHA_DE_HOY', DATEDIFF(NOW() , FECHA)  AS DIFERENCIA FROM productos WHERE SECCIÓN='DEPORTES';
      
      
      
      
                   
              --  -**** Date_format( %D-%M-%Y) ==> Permite formatear las fechas   .****
              
	  SELECT NOMBREARTÍCULO,SECCIÓN,PRECIO, DATE_FORMAT(NOW(),'%M-%Y') AS 'FECHA_DE_HOY', DATE_FORMAT(DATEDIFF(NOW() , FECHA ),'%D-%M-%Y' ) AS DIFERENCIA FROM productos WHERE SECCIÓN='DEPORTES';
       
	
     
     
-- *********************************************************************************************************************************
-- *********************************************************************************************************************************
--                                                 EJERCICIOS SQL 6
-- ************************************************************************************************************************ ********
-- *********************************************************************************************************************************




                                                    -- Ejerccio 1 --  
                                                    
  -- Realizar una consulta que visualice los campos NOMBRE ARTÍCULO,SECCIÓN, PRECIO de la tabla PRODUCTOS y un campo nuevo que nombramos con el texto “DESCUENTO_7”.
  -- Debe mostrar el resultado de aplicar sobre el campo PRECIO un descuento de un 7 %. El formato del nuevo campo para debe aparecer con 2 lugares decimales.

--  round( PRECIO*0.05,2) AS DESCUENTO,
    
    SELECT NOMBREARTÍCULO,SECCIÓN,  ROUND(PRECIO,2) AS 'PRECIO_PRODUCTO', ROUND(PRECIO * 0.07 ,2)  AS  DESCUENTO , ROUND((PRECIO) - (PRECIO * 0.07) ,2) AS 'PRECIO_CON_DESCUENTO_7' FROM  productos;
    
    
    
												    -- Ejerccio 2 --  
                                                                                                            
   -- Realizar una consulta visualizando los campos FECHA, SECCIÓN, NOMBREARTÍCULO y PRECIO de la tabla PRODUCTOS y un campo nuevo que nombramos con el texto “DTO2 €_EN_CERÁMICA”.
   -- Debe mostrar el resultado de aplicar sobre el campo PRECIO la resta de 2 € sólo a los artículos de la sección CERÁMICA. El formato del nuevo campo debe aparecer con 2 lugares decimales.
   -- Ordenar el resultado de la consulta por el campo FECHA descendente.                                                     


   -- 1 --
   SELECT FECHA, SECCIÓN, NOMBREARTÍCULO,ROUND(PRECIO,2) AS PRECIO, ROUND(2,2) AS  DTO_2€_EN_CERÁMICA, ROUND(PRECIO-2,2) AS 'PRECIO_CON_DESCUENTO' FROM productos ;   
   

   -- 2 ordenado por SECCIÓN =  'CERÁMICA'  --
   SELECT FECHA, SECCIÓN, NOMBREARTÍCULO,ROUND(PRECIO,2) AS PRECIO, ROUND(2,2) AS  DTO_2€_EN_CERÁMICA, ROUND(PRECIO-2,2) AS 'PRECIO_CON_DESCUENTO' FROM productos WHERE SECCIÓN =  'CERÁMICA' ;  
   
   -- 3 ordenado por SECCIÓN =  'CERÁMICA'   --
   SELECT FECHA, SECCIÓN, NOMBREARTÍCULO,ROUND(PRECIO,2) AS PRECIO, ROUND(2,2) AS  DTO_2€_EN_CERÁMICA, ROUND(PRECIO-2,2) AS 'PRECIO_CON_DESCUENTO' FROM productos WHERE SECCIÓN =  'CERÁMICA' ORDER BY  FECHA DESC  ;  
   
   
-- 4 ordenado por SECCIÓN =  'JUGUETERÍA' --
 SELECT FECHA, SECCIÓN, NOMBREARTÍCULO,ROUND(PRECIO,2) AS PRECIO, ROUND(2,2) AS  DTO_2€_EN_CERÁMICA, ROUND(PRECIO-2,2) AS 'PRECIO_CON_DESCUENTO' FROM productos WHERE SECCIÓN =  'JUGUETERÍA' ORDER BY  FECHA DESC  ;  
      
    
    
                                                                          -- Ejerccio 3 --  
																		
                                                                          
                                                                          

-- Realizar una consulta visualizando los campos NOMBRE ARTÍCULO, SECCIÓN, PRECIO de la tabla PRODUCTOS y un campo nuevo que nombramos con el texto “PRECIO_AUMENTADO_EN_2”.

-- debe mostrar el PRECIO con un incremento de un 2% del PRECIO. Sólo debemos tener en cuenta los registros de la sección FERRETERÍA. El nuevo campo debe aparecer en Euros

-- y con 2 lugares decimales

     SELECT NOMBREARTÍCULO,SECCIÓN,ROUND(PRECIO,2)AS PRECIO, ROUND(PRECIO *0.02,2) AS INCREMENTO_2_SOBRE_PRECIO, ROUND(PRECIO+(PRECIO *0.02) ,2) AS 'PRECIO_MAS_INCREMENTO'  FROM productos  WHERE SECCIÓN='FERRETERÍA' ORDER BY PRECIO DESC;
    
    
    
    
    
    
    
    
    
    
    
    
     
    
    
    
    
    
    
    