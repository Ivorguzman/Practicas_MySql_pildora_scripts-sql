-- La clausula LIMIT permite devolver un numero limitado de registros a partir de la parte superior o inferior de la base de datos.

                                                           -- ********* TRABAJANDO LIMIT EN COMBINACION CON DESC ************* --
                                                           
	-- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE, mostrando CÓDIGOCLIENTE por POBLACIÓN y ordenados por clientes en forma decendente
    SELECT POBLACIÓN, COUNT(CÓDIGOCLIENTE) AS CLIENTES_POBLACION, RESPONSABLE FROM clientes  GROUP BY POBLACIÓN ORDER BY CLIENTES_POBLACION  DESC;
    
    
    -- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE, mostrando CÓDIGOCLIENTE por POBLACIÓN y ordenados por clientes en forma decendente solo muetra el mayor gracias a la clausula ( LIMIT 1 ) en conbinacion con DESC
    SELECT POBLACIÓN, COUNT(CÓDIGOCLIENTE) AS CLIENTES_POBLACION, RESPONSABLE FROM clientes  GROUP BY POBLACIÓN ORDER BY CLIENTES_POBLACION  DESC LIMIT 1;
    
    
    -- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE, mostrando CÓDIGOCLIENTE por POBLACIÓN y ordenados por clientes en forma decendente solo muetra el  SEGUNDO mayor gracias a la clausula ( LIMIT 1,1 ) en conbinacion con DESC
    SELECT POBLACIÓN, COUNT(CÓDIGOCLIENTE) AS CLIENTES_POBLACION, RESPONSABLE FROM clientes  GROUP BY POBLACIÓN ORDER BY CLIENTES_POBLACION  DESC LIMIT 1,1;
    
    
     -- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE, mostrando CÓDIGOCLIENTE por POBLACIÓN y ordenados por clientes en forma decendente solo muetra el PRIMER  y  SEGUNDO mayor gracias a la clausula ( LIMIT 2 ) en conbinacion con DESC
    SELECT POBLACIÓN, COUNT(CÓDIGOCLIENTE) AS CLIENTES_POBLACION, RESPONSABLE FROM clientes  GROUP BY POBLACIÓN ORDER BY CLIENTES_POBLACION  DESC LIMIT 2;
    
     -- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE, mostrando CÓDIGOCLIENTE por POBLACIÓN y ordenados por clientes en forma decendente solo muetra el PRIMER ,SEGUNDO Y TERCERO  mayor gracias a la clausula ( LIMIT 2 ) en conbinacion con DESC
    SELECT POBLACIÓN, COUNT(CÓDIGOCLIENTE) AS CLIENTES_POBLACION, RESPONSABLE FROM clientes  GROUP BY POBLACIÓN ORDER BY CLIENTES_POBLACION  DESC LIMIT 3;
    
    
    
                                      -- ********* TRABAJANDO LIMIT SIN LA CLAUSULA DESC ************* --
    
    -- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE, mostrando CÓDIGOCLIENTE por POBLACIÓN y ordenados por clientes en forma decendente
    SELECT POBLACIÓN, COUNT(CÓDIGOCLIENTE) AS CLIENTES_POBLACION, RESPONSABLE FROM clientes  GROUP BY POBLACIÓN ORDER BY CLIENTES_POBLACION  ;
    
    
    -- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE, mostrando CÓDIGOCLIENTE por POBLACIÓN y ordenados por clientes en forma decendente solo muetra el mayor gracias a la clausula ( LIMIT 1 ) en conbinacion con DESC
    SELECT POBLACIÓN, COUNT(CÓDIGOCLIENTE) AS CLIENTES_POBLACION, RESPONSABLE FROM clientes  GROUP BY POBLACIÓN ORDER BY CLIENTES_POBLACION  LIMIT 1;
    
    
    -- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE, mostrando CÓDIGOCLIENTE por POBLACIÓN y ordenados por clientes en forma decendente solo muetra el  SEGUNDO mayor gracias a la clausula ( LIMIT 1,1 ) en conbinacion con DESC
    SELECT POBLACIÓN, COUNT(CÓDIGOCLIENTE) AS CLIENTES_POBLACION, RESPONSABLE FROM clientes  GROUP BY POBLACIÓN ORDER BY CLIENTES_POBLACION  LIMIT 1,1;
    
    
     -- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE, mostrando CÓDIGOCLIENTE por POBLACIÓN y ordenados por clientes en forma decendente solo muetra el PRIMER  y  SEGUNDO mayor gracias a la clausula ( LIMIT 2 ) en conbinacion con DESC
    SELECT POBLACIÓN, COUNT(CÓDIGOCLIENTE) AS CLIENTES_POBLACION, RESPONSABLE FROM clientes  GROUP BY POBLACIÓN ORDER BY CLIENTES_POBLACION   LIMIT 4;




