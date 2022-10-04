select * FROM  PRODUCTOS;

select NOMBREARTÍCULO,SECCIÓN,PRECIO FROM productos;

select NOMBREARTÍCULO,SECCIÓN,PRECIO FROM productos where SECCIÓN = 'CERAMICA';

select NOMBREARTÍCULO,PRECIO from productos where SECCIÓN = 'CERAMICA' or SECCIÓN='DEPORTES';

select NOMBREARTÍCULO,PRECIO from productos where SECCIÓN = 'deportes' or PAÍSDEORIGEN='usa';

select NOMBREARTÍCULO,PRECIO,PAÍSDEORIGEN from productos where SECCIÓN='deportes' or PAÍSDEORIGEN ='usa';

select NOMBREARTÍCULO,PRECIO,PAÍSDEORIGEN from productos where SECCIÓN='deportes' and PAÍSDEORIGEN ='usa';

select NOMBREARTÍCULO,PRECIO from productos where PRECIO >300;

select NOMBREARTÍCULO,PRECIO from productos where PRECIO >=300;

select NOMBREARTÍCULO,PRECIO from productos where PRECIO <= 30;

select NOMBREARTÍCULO,PRECIO,FECHA from productos  where FECHA >='2000-03-01' and FECHA <='2000-04-30';

select NOMBREARTÍCULO,PRECIO,FECHA from productos  where FECHA between '2000-03-01'and '2000-04-30';