select* from productos where SECCIÓN='deportes' or SECCIÓN='ceramica';

select* from productos where SECCIÓN='deportes' or SECCIÓN='ceramica' order by SECCIÓN;

select NOMBREARTÍCULO,PRECIO,SECCIÓN,IMPORTADO from productos where SECCIÓN='ceramica' or SECCIÓN='deportes' order by PRECIO;

select FECHA,NOMBREARTÍCULO,CÓDIGOARTÍCULO,IMPORTADO,PAÍSDEORIGEN from productos where SECCIÓN='deportes' or SECCIÓN='JUGUETERÍA' order by FECHA desc;

select NOMBREARTÍCULO,CÓDIGOARTÍCULO,PAÍSDEORIGEN,FECHA from productos where SECCIÓN='deportes' or SECCIÓN='JUGUETERÍA'order by PAÍSDEORIGEN desc;

select NOMBREARTÍCULO,CÓDIGOARTÍCULO,PAÍSDEORIGEN,FECHA from productos where SECCIÓN='deportes'or SECCIÓN='JUGUETERÍA' order by FECHA desc;

select NOMBREARTÍCULO,CÓDIGOARTÍCULO,PAÍSDEORIGEN,SECCIÓN,FECHA from productos where SECCIÓN='deportes'or SECCIÓN='JUGUETERÍA' order by SECCIÓN,FECHA;

select NOMBREARTÍCULO,PRECIO,SECCIÓN,IMPORTADO from productos where SECCIÓN='ceramica' or SECCIÓN='deportes' order by SECCIÓN,PRECIO;

select NOMBREARTÍCULO,PRECIO,SECCIÓN,IMPORTADO from productos where SECCIÓN='ceramica' or SECCIÓN='deportes' order by SECCIÓN,PRECIO desc;

select NOMBREARTÍCULO,CÓDIGOARTÍCULO,SECCIÓN,PAÍSDEORIGEN,FECHA from productos where SECCIÓN='ceramica' or SECCIÓN='deportes' order by SECCIÓN,FECHA desc;

select NOMBREARTÍCULO,CÓDIGOARTÍCULO,SECCIÓN,PAÍSDEORIGEN,FECHA from productos where SECCIÓN='ceramica' or SECCIÓN='deportes' order by NOMBREARTÍCULO,SECCIÓN , FECHA desc,PAÍSDEORIGEN;

select NOMBREARTÍCULO,CÓDIGOARTÍCULO,SECCIÓN,PAÍSDEORIGEN,FECHA from productos where SECCIÓN='ceramica' or SECCIÓN='deportes' order by SECCIÓN, FECHA desc, PAÍSDEORIGEN;

