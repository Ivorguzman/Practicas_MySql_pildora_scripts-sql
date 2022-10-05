                                        
                                        -- *********** CONSULTAS DE CALCULO **************
                                        
-- 1. Se caracterizan por ralizar sus operaciones en registros individuals no en grupos
-- 2. Es frecuente que en las consultas de calculo se utilize funciones SQL.
-- 3. hay dos grupos de funciones :
		-- A. Las estandar del lenguaje SQL.
        -- B. Las Propias de cada gestor de base de datos( MySql, Sql Server(MicroSoft), Sql Developer(Oracle), Acceses, etc.).
        

-- ******* Funciones comunes a SQL mas utilizadas:
	-- 1. Now() ==> Devuelve el dia y Hora Actual actual en el momento de  hacer la consulta
    -- 2. Datediff() ==> Devuelve la diferencia entre dos fechas en una consulta
    -- 3. Date_format() ==> Devuelve permite formatear los resltados de fechas ( Quitar decimales, etc ) 
    -- 4. Round() ==> Permite redondear resultados
    -- 5. Truncate() ==> 
    -- 6. Concat() ==> permite concatenar.
    
    
    -- ************************** CONSULTAS DE CAMPOS NUEVOS CALCULADOS ****************************
    
    --  Crear una consulta sobre la tabla productos donde se incremente le IVA (21%) a cada producto:
    
                                                          --  ---- Funcion Round().----
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
   
      
                                                                                      --  ---- Funcion Now().----
                                                                                      
                                                                                      
      
    
    
    
    
    
    
    
    
    
    
    
    