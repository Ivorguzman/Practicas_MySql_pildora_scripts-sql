                                        
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
                                                          
    select NOMBREARTÍCULO, SECCIÓN,round(PRECIO,2) as PRECIO, round(PRECIO *.21,2) as IVA ,Round(PRECIO + (PRECIO * 0.21),2) as PRECIO_IVA from productos;
    
    --  Crear consulta que refleje un descuento de 5% en cada articulo
    select NOMBREARTÍCULO, SECCIÓN,round(PRECIO,2) as PRECIO, round(PRECIO *.21,2) as IVA ,Round(PRECIO + (PRECIO * 0.21),2) as PRECIO_IVA , round( PRECIO*0.05,2) AS DESCUENTO,  round(PRECIO +  (PRECIO * 0.21) - (PRECIO*0.05),2) as PRECIO_CON_DESCUENTO from productos;
      
	--  Crear consulta que refleje un descuento de 5% en cada articulo ordenado por seccion
    select NOMBREARTÍCULO, SECCIÓN,round(PRECIO,2) as PRECIO, round(PRECIO *.21,2) as IVA ,Round(PRECIO + (PRECIO * 0.21),2) as PRECIO_IVA , round( PRECIO*0.05,2) AS DESCUENTO,  round(PRECIO +  (PRECIO * 0.21) - (PRECIO*0.05),2) as PRECIO_CON_DESCUENTO   from productos order by  SECCIÓN;
    
	--  Crear consulta que refleje un descuento de 5% en cada articulo agrupado por precio mostrando el mas caro
    select NOMBREARTÍCULO, SECCIÓN,round(PRECIO,2) as PRECIO, round(PRECIO *.21,2) as IVA ,Round(PRECIO + (PRECIO * 0.21),2) as PRECIO_IVA , round( PRECIO*0.05,2) AS DESCUENTO,  round(PRECIO +  (PRECIO * 0.21) - (PRECIO*0.05),2) as PRECIO_CON_DESCUENTO   from productos group by  PRECIO desc LIMIT 1;
   
	--  Crear consulta que refleje un descuento de 5% en cada articulo agrupado por precio mostrando los ariculos que este entre 100 y 400 del mayor al menor
    select NOMBREARTÍCULO, SECCIÓN,round(PRECIO,2) as PRECIO, round(PRECIO *.21,2) as IVA ,Round(PRECIO + (PRECIO * 0.21),2) as PRECIO_IVA , round( PRECIO*0.05,2) AS DESCUENTO,  round(PRECIO +  (PRECIO * 0.21) - (PRECIO*0.05),2) as PRECIO_CON_DESCUENTO   from productos group by  PRECIO desc  having  PRECIO between 100 and 400  ;
    
    --  Crear consulta que refleje un descuento de 5% en cada articulo de la seccion deporte
    select NOMBREARTÍCULO,FECHA, SECCIÓN,round(PRECIO,2) as PRECIO, round(PRECIO *.21,2) as IVA ,Round(PRECIO + (PRECIO * 0.21),2) as PRECIO_IVA , round( PRECIO*0.05,2) AS DESCUENTO,  round(PRECIO +  (PRECIO * 0.21) - (PRECIO*0.05),2) as PRECIO_CON_DESCUENTO   from  productos    where SECCIÓN='DEPORTES'  ;
     
	--  Crear consulta que refleje un descuento de 5% en cada articulo ordenado por precio mostrando los ariculos que este entre 100 y 400 del mayor al menor de la seccon deportes
    select NOMBREARTÍCULO,FECHA, SECCIÓN,round(PRECIO,2) as PRECIO, round(PRECIO *.21,2) as IVA ,Round(PRECIO + (PRECIO * 0.21),2) as PRECIO_IVA , round( PRECIO*0.05,2) AS DESCUENTO,  round(PRECIO +  (PRECIO * 0.21) - (PRECIO*0.05),2) as PRECIO_MENOS_DESCUENTO    from  productos   where SECCIÓN='DEPORTES' having  PRECIO  between 100 and 400  order by PRECIO desc  ;
     
    --  Crear consulta que refleje un descuento de 5% en cada articulo ordenado por precio mostrando el ariculos mas caro que este entre 100 y 400  seccon deportes
    select NOMBREARTÍCULO,FECHA, SECCIÓN,round(PRECIO,2) as PRECIO, round(PRECIO *.21,2) as IVA ,Round(PRECIO + (PRECIO * 0.21),2) as PRECIO_IVA , round( PRECIO*0.05,2) AS DESCUENTO,  round(PRECIO +  (PRECIO * 0.21) - (PRECIO*0.05),2) as PRECIO_MENOS_DESCUENTO    from  productos   where SECCIÓN='DEPORTES' having  PRECIO  between 100 and 400  order by PRECIO desc LIMIT 1;
   
   
     
                                                                 
                                                                 
                                                                 
										--  -**** Funcion Now() ==> Devuelve el dia y Hora Actual actual en el momento de  hacer la consulta.****
																			
       
       select NOMBREARTÍCULO,SECCIÓN,PRECIO,FECHA from productos;
       
       
       select NOMBREARTÍCULO,SECCIÓN,PRECIO,FECHA from productos where SECCIÓN='DEPORTES';
       
       
       -- Utilizando funcion  Now() en la consulta
       select NOMBREARTÍCULO,SECCIÓN,PRECIO, Now() as FECHA_DE_HOY from productos where SECCIÓN='DEPORTES';
       
       
       
       
       
                      -- ****** datediff(  ,   ) ==> Devuelve el no de dias entre dos fechas en una consulta ******
      
      -- Nota: No se puede trabajar con los alias
      select NOMBREARTÍCULO,SECCIÓN,PRECIO, Now() as FECHA_DE_HOY, datediff(now() , FECHA)  as DIFERENCIA from productos where SECCIÓN='DEPORTES';
      
      
      
      
                   
              --  -**** Date_format( %D-%M-%Y) ==> Permite formatear las fechas   .****
              
	  select NOMBREARTÍCULO,SECCIÓN,PRECIO, Date_format(now(),'%M-%Y') as FECHA_DE_HOY, Date_format(datediff(now() , FECHA ),'%D-%M-%Y' ) as DIFERENCIA from productos where SECCIÓN='DEPORTES';
       
	
     
     
-- *********************************************************************************************************************************
-- *********************************************************************************************************************************
--                                                 EJERCICIOS SQL 6
-- ************************************************************************************************************************ ********
-- *********************************************************************************************************************************




                                                    -- Ejerccio 1 --  
                                                    
  -- Realizar una consulta que visualice los campos NOMBRE ARTÍCULO,SECCIÓN, PRECIO de la tabla PRODUCTOS y un campo nuevo que nombramos con el texto “DESCUENTO_7”.
  -- Debe mostrar el resultado de aplicar sobre el campo PRECIO un descuento de un 7 %. El formato del nuevo campo para debe aparecer con 2 lugares decimales.

--  round( PRECIO*0.05,2) AS DESCUENTO,
    
    select NOMBREARTÍCULO,SECCIÓN,  round(PRECIO,2) as PRECIO_PRODUCTO, round(PRECIO * 0.07 ,2)  as  DESCUENTO , round((PRECIO) - (PRECIO * 0.07) ,2) as PRECIO_CON_DESCUENTO_7 from  productos;
    
    
    
												    -- Ejerccio 2 --  
                                                                                                            
   -- Realizar una consulta visualizando los campos FECHA, SECCIÓN, NOMBREARTÍCULO y PRECIO de la tabla PRODUCTOS y un campo nuevo que nombramos con el texto “DTO2 €_EN_CERÁMICA”.
   -- Debe mostrar el resultado de aplicar sobre el campo PRECIO la resta de 2 € sólo a los artículos de la sección CERÁMICA. El formato del nuevo campo debe aparecer con 2 lugares decimales.
   -- Ordenar el resultado de la consulta por el campo FECHA descendente.                                                     


   -- 1 --
   select FECHA, SECCIÓN, NOMBREARTÍCULO,round(PRECIO,2) AS PRECIO, round(2,2) as  DTO_2€_EN_CERÁMICA, round(PRECIO-2,2) as PRECIO_CON_DESCUENTO from productos ;   
   

   -- 2 ordenado por SECCIÓN =  'CERÁMICA'  --
   select FECHA, SECCIÓN, NOMBREARTÍCULO,round(PRECIO,2) AS PRECIO, round(2,2) as  DTO_2€_EN_CERÁMICA, round(PRECIO-2,2) as PRECIO_CON_DESCUENTO from productos where SECCIÓN =  'CERÁMICA' ;  
   
   -- 3 ordenado por SECCIÓN =  'CERÁMICA'   --
   select FECHA, SECCIÓN, NOMBREARTÍCULO,round(PRECIO,2) AS PRECIO, round(2,2) as  DTO_2€_EN_CERÁMICA, round(PRECIO-2,2) as PRECIO_CON_DESCUENTO from productos where SECCIÓN =  'CERÁMICA' order by  FECHA desc  ;  
   
   
-- 4 ordenado por SECCIÓN =  'JUGUETERÍA' --
 select FECHA, SECCIÓN, NOMBREARTÍCULO,round(PRECIO,2) AS PRECIO, round(2,2) as  DTO_2€_EN_CERÁMICA, round(PRECIO-2,2) as PRECIO_CON_DESCUENTO from productos where SECCIÓN =  'JUGUETERÍA' order by  FECHA desc  ;  
      
    
    
                                                                          -- Ejerccio 3 --  
                                                                          
                                                                          
                                                                          

-- Realizar una consulta visualizando los campos NOMBRE ARTÍCULO, SECCIÓN, PRECIO de la tabla PRODUCTOS y un campo nuevo que nombramos con el texto “PRECIO_AUMENTADO_EN_2”.

-- debe mostrar el PRECIO con un incremento de un 2% del PRECIO. Sólo debemos tener en cuenta los registros de la sección FERRETERÍA. El nuevo campo debe aparecer en Euros

-- y con 2 lugares decimales

     select NOMBREARTÍCULO,SECCIÓN,round(PRECIO,2)as PRECIO, round(PRECIO *0.02,2) as INCREMENTO_2_SOBRE_PRECIO, round(PRECIO+(PRECIO *0.02) ,2) as PRECIO_MAS_INCREMENTO  from productos  where SECCIÓN='FERRETERÍA' order by PRECIO desc;
    
    
    
    
    
    
    
    
    
    
    
    
     
    
    
    
    
    
    
    