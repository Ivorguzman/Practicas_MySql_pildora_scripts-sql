

-- ********************  Consultaas Multitablas ó Consutas de union ****************************


-- De union EXTERNA

	-- Unuion ==> Permite unir VARIAS CUNSULTAS DE TABLASD DIFERENTES en una unica CONSULTA  y mostrarlo en una unica tabla
    -- Union all 
    
    
    -- Execpt    ==> MySql no lo sopporta
    -- Intersect ==> MySql no lo sopporta
    -- Minus     ==> MySql no lo sopporta
    
    -- De union INTERNA
    
		-- Inner Join
        -- Right join
        -- Left  join
        
        
        
        
        
                                                -- ******** CONSULTAS DEUNION EXTERNA ***********




-- **********************************-- *******  Union ==> Permite unir en una unica consulta varias tablas almacenada en la base de datos *****************************************
-- 
-- Requisitos para poder realizar uniones de tablas: 
-- Ambas tablas deben tener el mismo numero de campos
--  Los campos debe ser compatibles Ejemplo : Campo Numerico y campo tipo monedad
--  El nombre de los campos que se le asigna a la tabla resultante en la consulta  son los de la primera cunsulta (La primera tabala  en la union de tablas) en el query reslizado
    
          
  select * from productos; -- SELECIONANDO TODOS LOS CAMPOS 
  select * from productosnuevos; -- SELECIONANDO TODOS LOS CAMPOS 
  
  select * from productos union select * from productosnuevos; -- UNIENDO LAS DOS CONULTAS
  select * from productosnuevos   union   select * from productos; -- INVIRTIENDO  LA CONSUULTA UNIDA
    
    
    
  -- Consulta  articulos que pertenescan a Deportes que esta en la base de datos productos   
  SELECT  * FROM  productos WHERE SECCIÓN = 'deportes';
  
  -- consulta de articulo deporte de riesgo  de la seccion deportes de la tabla productosnuevos
  SELECT * FROM productosnuevos WHERE SECCIÓN='deportes de riesgo';
  
  
  -- Usando el Oprerador Union  consulta  articulos que pertenescan a Deportes que esta en la base de datos productos   y Deportes de riesgo que estan el abase de datos productosnuevos
  SELECT * FROM productos WHERE SECCIÓN = 'deportes' UNION  SELECT  * FROM productosnuevos  WHERE SECCIÓN ='DEPORTES DE RIESGO';
    
    
  -- hacer una cobnsulta que me relaciones articulos deportes y articulos deportes de riesgo  y los ordenes por PAÍSDEORIGEN
  SELECT * FROM productos  WHERE SECCIÓN = 'deportes'  UNION    SELECT * FROM productosnuevos WHERE SECCIÓN = 'DEPORTES DE RIESGO'  ORDER BY PAÍSDEORIGEN ;
  
  
  
  
  -- hacer una consulta  que nos muestre :
  
  -- Crear una consulta con dos consultas unidads con criterios deferentes
		-- articlos de la tabla de producto cuyo precio sea mayoar a 500 y los articulo de la tabla productos nuevos  cuya secion sea alta costura 
  
  
  
  
  
  
  
  
  
  
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    