-- La clausula LIMIT permite devolver un numero limitado de registros a partir de la parte superior o inferior de la base de datos.

                                                           -- ********* TRABAJANDO LIMIT EN COMBINACION CON DESC ************* --
                                                           
	-- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE, mostrando CÓDIGOCLIENTE por POBLACIÓN y ordenados por clientes en forma decendente
    select POBLACIÓN, count(CÓDIGOCLIENTE) as CLIENTES_POBLACION, RESPONSABLE from clientes  group by POBLACIÓN order by CLIENTES_POBLACION  DESC;
    
    
    -- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE, mostrando CÓDIGOCLIENTE por POBLACIÓN y ordenados por clientes en forma decendente solo muetra el mayor gracias a la clausula ( LIMIT 1 ) en conbinacion con DESC
    select POBLACIÓN, count(CÓDIGOCLIENTE) as CLIENTES_POBLACION, RESPONSABLE from clientes  group by POBLACIÓN order by CLIENTES_POBLACION  DESC LIMIT 1;
    
    
    -- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE, mostrando CÓDIGOCLIENTE por POBLACIÓN y ordenados por clientes en forma decendente solo muetra el  SEGUNDO mayor gracias a la clausula ( LIMIT 1,1 ) en conbinacion con DESC
    select POBLACIÓN, count(CÓDIGOCLIENTE) as CLIENTES_POBLACION, RESPONSABLE from clientes  group by POBLACIÓN order by CLIENTES_POBLACION  DESC LIMIT 1,1;
    
    
     -- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE, mostrando CÓDIGOCLIENTE por POBLACIÓN y ordenados por clientes en forma decendente solo muetra el PRIMER  y  SEGUNDO mayor gracias a la clausula ( LIMIT 2 ) en conbinacion con DESC
    select POBLACIÓN, count(CÓDIGOCLIENTE) as CLIENTES_POBLACION, RESPONSABLE from clientes  group by POBLACIÓN order by CLIENTES_POBLACION  DESC LIMIT 2;
    
     -- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE, mostrando CÓDIGOCLIENTE por POBLACIÓN y ordenados por clientes en forma decendente solo muetra el PRIMER ,SEGUNDO Y TERCERO  mayor gracias a la clausula ( LIMIT 2 ) en conbinacion con DESC
    select POBLACIÓN, count(CÓDIGOCLIENTE) as CLIENTES_POBLACION, RESPONSABLE from clientes  group by POBLACIÓN order by CLIENTES_POBLACION  DESC LIMIT 3;
    
    
    
                                      -- ********* TRABAJANDO LIMIT SIN LA CLAUSULA DESC ************* --
    
    -- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE, mostrando CÓDIGOCLIENTE por POBLACIÓN y ordenados por clientes en forma decendente
    select POBLACIÓN, count(CÓDIGOCLIENTE) as CLIENTES_POBLACION, RESPONSABLE from clientes  group by POBLACIÓN order by CLIENTES_POBLACION  ;
    
    
    -- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE, mostrando CÓDIGOCLIENTE por POBLACIÓN y ordenados por clientes en forma decendente solo muetra el mayor gracias a la clausula ( LIMIT 1 ) en conbinacion con DESC
    select POBLACIÓN, count(CÓDIGOCLIENTE) as CLIENTES_POBLACION, RESPONSABLE from clientes  group by POBLACIÓN order by CLIENTES_POBLACION  LIMIT 1;
    
    
    -- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE, mostrando CÓDIGOCLIENTE por POBLACIÓN y ordenados por clientes en forma decendente solo muetra el  SEGUNDO mayor gracias a la clausula ( LIMIT 1,1 ) en conbinacion con DESC
    select POBLACIÓN, count(CÓDIGOCLIENTE) as CLIENTES_POBLACION, RESPONSABLE from clientes  group by POBLACIÓN order by CLIENTES_POBLACION  LIMIT 1,1;
    
    
     -- Consulta agrupada por POBLACIÓN  contada por CÓDIGOCLIENTE, mostrando CÓDIGOCLIENTE por POBLACIÓN y ordenados por clientes en forma decendente solo muetra el PRIMER  y  SEGUNDO mayor gracias a la clausula ( LIMIT 2 ) en conbinacion con DESC
    select POBLACIÓN, count(CÓDIGOCLIENTE) as CLIENTES_POBLACION, RESPONSABLE from clientes  group by POBLACIÓN order by CLIENTES_POBLACION   LIMIT 4;




