

-- ********************  Consultaas Multitablas ó Consutas de union ****************************


-- De union EXTERNA

	-- Unuion ==> Permite unir VARIAS CUNSULTAS DE TABLASD DIFERENTES en una unica CONSULTA  y mostrarlo en una unica tabla
    --  Union all 
    
    
    -- Execpt    ==> MySql no lo sopporta
    -- Intersect ==> MySql no lo sopporta
    -- Minus     ==> MySql no lo sopporta
    
    -- De union INTERNA
    
		-- Inner Join
        -- Right join
        -- Left  join
        
        
        
        
        
                                                -- ******** CONSULTAS DEUNION EXTERNA ***********




-- *****************************************   UNION ==>  Permite unir en una unica consulta varias tablas almacenada en la base de datos *****************************************

-- Requisitos para poder realizar uniones de tablas: 
-- Ambas tablas deben tener el mismo numero de campos
--  Los campos debe ser compatibles Ejemplo : Campo Numerico y campo tipo monedad
--  El nombre de los caproductosnuevosmpos que se le asigna a la tabla resultante en la consulta  son los de la primera cunsulta (La primera tabala  en la union de tablas) en el query reslizado
--  Se pueden utilizar el operador UNION tantas veces que se quiera un una misma consulta
    
          
  SELECT * FROM productos; -- SELECIONANDO TODOS LOS CAMPOS 
  SELECT * FROM productosnuevos; -- SELECIONANDO TODOS LOS CAMPOS 
  
  SELECT * FROM productos UNION SELECT * FROM productosnuevos; -- UNIENDO LAS DOS CONULTAS EN UNA SOLA TABLA
  SELECT * FROM productosnuevos   UNION   SELECT * FROM productos; -- INVIRTIENDO  LA CONSULTA UNIDA
    
    
    
  -- Consulta  articulos que pertenescan a Deportes que esta en la base de datos productos   
  SELECT  * FROM  productos WHERE SECCIÓN = 'deportes';
  
  -- consulta de articulo deporte de riesgo  de la seccion deportes de la tabla productosnuevos
  SELECT * FROM productosnuevos WHERE SECCIÓN='deportes de riesgo';
  
  
  -- Usando el Oprerador Union  consulta  articulos que pertenescan a Deportes que esta en la base de datos productos   y Deportes de riesgo que estan el abase de datos productosnuevos
  SELECT * FROM   productos WHERE SECCIÓN = 'deportes' UNION  SELECT  * FROM productosnuevos  WHERE SECCIÓN ='DEPORTES DE RIESGO';
    
    
  -- hacer una cobnsulta que me relaciones articulos deportes y articulos deportes de riesgo  y los ordenes por PAÍSDEORIGEN
  SELECT * FROM productosnuevos  WHERE  SECCIÓN = 'DEPORTES DE RIESGO'   UNION    SELECT * FROM productos WHERE  SECCIÓN = 'deportes' ORDER BY PAÍSDEORIGEN ;
   
  
  
  
  -- Hacer una consulta  que nos muestre :
  
  -- Crear una consulta con dos consultas unidades con criterios deferentes:
  
		-- articlos de la tabla de producto cuyo precio sea mayor a 500 y los articulo de la tabla productos nuevos  cuya secion sea alta costura 
		SELECT  * FROM  productos WHERE  precio >= 500;
        SELECT *  FROM productosnuevos WHERE SECCIÓN='ALTA COSTURA';
        SELECT  * FROM  productos WHERE  precio >= 500 UNION  SELECT * FROM productosnuevos WHERE SECCIÓN='ALTA COSTURA' order by precio;
        
        
		-- articlos de la tabla de producto cuyo precio sea mayor a 500 y los articulo de la tabla productos nuevos  cuya secion sea alta costura ordenadp por precio
         SELECT  *  FROM  productos WHERE  precio >= 500   UNION  SELECT * FROM productosnuevos WHERE SECCIÓN='ALTA COSTURA'  order by  PRECIO ;
        
               
             
      --  EL OPERADOR  UNION   MUESTRA UNA SOLA VEZ EL A LOS REGISTROS REPETIDOS  EN LA CONSULTA;
        SELECT  * FROM  productos WHERE SECCIÓN = 'deportes';
        SELECT * FROM productosnuevos WHERE SECCIÓN='deportes';
        -- Solo relaciona el registro repetido una sola vez
        SELECT  * FROM  productos WHERE SECCIÓN = 'deportes' UNION  SELECT * FROM productosnuevos WHERE SECCIÓN='deportes';
  
             
		 DESCRIBE  productosnuevos;
  



  -- *****************************************   UNION ALL ==>  Permite unir en una unica consulta varias tablas registros repetidos los muestra una sola vez *****************************************


  
    -- Consulta  articulos que pertenescan a Deportes que esta en la base de datos productos   
  SELECT  * FROM  productos WHERE SECCIÓN = 'deportes';
  
  -- consulta de articulo deporte de riesgo  de la seccion deportes de la tabla productosnuevos
  SELECT * FROM productosnuevos WHERE SECCIÓN='deportes';
  
  
   --  EL OPERADOR  UNION   MUESTRA UNA SOLA VEZ EL A LOS REGISTROS REPETIDOS  EN LA CONSULTA;
        SELECT  * FROM  productos WHERE SECCIÓN = 'deportes';
        SELECT * FROM productosnuevos WHERE SECCIÓN='deportes';
        --  Realaciona los registros repetidos tantas veces como esten en la consulta
        SELECT  * FROM  productos WHERE SECCIÓN = 'deportes' UNION ALL SELECT * FROM productosnuevos WHERE SECCIÓN='deportes';
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    