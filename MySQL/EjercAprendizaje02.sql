-- Ejercicios de aprendizaje 2 - página 47
-- Fer Vega - jalmendra99@gmail.com
--
-- Ejecutar tienda.sql
use tienda


-- 1. Lista el nombre de todos los productos que hay en la tabla producto.
SELECT * FROM producto;


-- 2. Lista los nombres y los precios de todos los productos de la tabla producto.
SELECT nombre, precio FROM producto;


-- 3. Lista todas las columnas de la tabla producto.
DESCRIBE producto;


-- 4. Lista los nombres y los precios de todos los productos de la tabla producto, 
--    redondeando el valor del precio.
SELECT nombre, round(precio) FROM producto;


-- 5. Lista el código de los fabricantes que tienen productos en la tabla producto.
select codigo_fabricante FROM producto;


-- 6. Lista el código de los fabricantes que tienen productos en la tabla producto, sin mostrar los repetidos.
SELECT DISTINCT codigo_fabricante FROM producto;


-- 7. Lista los nombres de los fabricantes ordenados de forma ascendente.
SELECT nombre FROM fabricante ORDER BY nombre;

-- 8. Lista los nombres de los productos ordenados en primer lugar por el nombre 
--    de forma ascendente y en segundo lugar por el precio de forma descendente.
SELECT nombre, precio FROM producto ORDER BY nombre ASC, precio DESC;


-- 9. Devuelve una lista con las 5 primeras filas de la tabla fabricante.
SELECT * FROM fabricante LIMIT 5;


-- 10. Lista el nombre y el precio del producto más barato. 
-- (Utilice solamente las cláusulas ORDER BY y LIMIT)
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;


-- 11. Lista el nombre y el precio del producto más caro. 
-- (Utilice solamente las cláusulas ORDER BY y LIMIT)
SELECT nombre, precio FROM producto ORDER BY precio LIMIT 1;


-- 12. Lista el nombre de los productos que tienen un precio menor o igual a $120.
SELECT nombre FROM producto WHERE precio <= 120;


-- 13. Lista todos los productos que tengan un precio entre $60 y $200. 
-- Utilizando el operador BETWEEN.
SELECT * FROM producto WHERE precio >= 60 AND precio <=200;


-- 14. Lista todos los productos donde el código de fabricante sea 1, 3 o 5. 
-- Utilizando el operador IN.
SELECT * FROM producto WHERE codigo_fabricante IN (1, 3, 5);


-- 15. Devuelve una lista con el nombre de todos los productos que contienen 
-- la cadena Portátil en el nombre.
SELECT * FROM producto WHERE upper(nombre) LIKE '%PORTATIL%';


-- 
-- Consultas Multitabla:
-- 
-- 1. Devuelve una lista con el código del producto, nombre del producto, código del fabricante 
--    y nombre del fabricante, de todos los productos de la base de datos.
SELECT p.codigo, p.nombre, codigo_fabricante, f.nombre
FROM producto p, fabricante f
WHERE p.codigo_fabricante = f.codigo;


-- 2. Devuelve una lista con el nombre del producto, precio y nombre de fabricante 
-- de todos los productos de la base de datos. 
-- Ordene el resultado por el nombre del fabricante, por orden alfabético.
SELECT p.nombre, precio, f.nombre
FROM producto p, fabricante f
WHERE p.codigo_fabricante = f.codigo
ORDER BY p.nombre;


-- 3. Devuelve el nombre del producto, su precio y el nombre de su fabricante, 
-- del producto más barato.
SELECT p.nombre, precio, f.nombre
FROM producto p, fabricante f
WHERE p.codigo_fabricante = f.codigo
AND p.codigo = (SELECT codigo FROM producto ORDER BY precio LIMIT 1);


-- 4. Devuelve una lista de todos los productos del fabricante Lenovo.
SELECT * FROM producto
WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE upper(nombre) = 'LENOVO');


-- 5. Devuelve una lista de todos los productos del fabricante Crucial que tengan 
-- un precio mayor que $200.
SELECT * FROM producto
WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE upper(nombre) = 'CRUCIAL')
AND precio > 200;


-- 6. Devuelve un listado con todos los productos de los fabricantes Asus, 
-- Hewlett-Packard. Utilizando el operador IN.
SELECT * FROM producto
WHERE codigo_fabricante IN  
(SELECT codigo FROM fabricante WHERE upper(nombre) IN ('ASUS', 'HEWLETT-PACKARD'));


-- 7. Devuelve un listado con el nombre de producto, precio y nombre de fabricante, 
-- de todos los productos que tengan un precio mayor o igual a $180. 
-- Ordene el resultado en primer lugar por el precio (en orden descendente) 
-- y en segundo lugar por el nombre (en orden ascendente)
SELECT p.nombre, precio, f.nombre
FROM producto p, fabricante f
WHERE p.codigo_fabricante = f.codigo
AND precio >= 180
ORDER BY precio DESC, p.nombre;


-- Consultas Multitabla:
-- Resuelva todas las consultas utilizando las cláusulas LEFT JOIN y RIGHT JOIN. 
-- 
-- 1. Devuelve un listado de todos los fabricantes que existen en la base de datos, 
-- junto con los productos que tiene cada uno de ellos. 
-- El listado deberá mostrar también aquellos fabricantes que no tienen productos asociados.
SELECT * FROM fabricante f
LEFT JOIN producto p
ON p.codigo_fabricante = f.codigo;


-- 2. Devuelve un listado donde sólo aparezcan aquellos fabricantes que no tienen 
-- ningún producto asociado.

SELECT * FROM fabricante f
LEFT JOIN producto p
ON p.codigo_fabricante = f.codigo
WHERE p.codigo IS null;


-- 
-- Subconsultas (En la cláusula WHERE): 
-- Con operadores básicos de comparación 
-- 
-- 1. Devuelve todos los productos del fabricante Lenovo. (Sin utilizar INNER JOIN). 
SELECT * FROM producto p, fabricante f
WHERE f.codigo = (SELECT codigo FROM fabricante WHERE upper(nombre) = 'LENOVO');


-- 2. Devuelve todos los datos de los productos que tienen el mismo precio que el producto más caro 
--    del fabricante Lenovo. (Sin utilizar INNER JOIN).
SELECT * FROM producto p, fabricante f
WHERE p.codigo_fabricante = f.codigo
AND precio = (
	SELECT max(precio) FROM producto p, fabricante f
	WHERE p.codigo_fabricante = f.codigo
	AND f.codigo = (
		SELECT codigo FROM fabricante WHERE upper(nombre) = 'LENOVO'
		)
	)
;


-- 3. Lista el nombre del producto más caro del fabricante Lenovo.
SELECT * FROM producto p, fabricante f
WHERE f.codigo = (SELECT codigo FROM fabricante WHERE upper(nombre) = 'LENOVO')
AND p.codigo = (SELECT codigo FROM producto ORDER BY precio DESC LIMIT 1);


-- 4. Lista todos los productos del fabricante Asus que tienen un precio superior al precio medio 
--    de todos sus productos.
SELECT * from producto p, fabricante f
WHERE p.codigo_fabricante = f.codigo
AND p.codigo_fabricante = (SELECT codigo FROM fabricante WHERE upper(nombre) = 'ASUS')
AND p.precio > (
SELECT AVG(precio) FROM producto WHERE codigo_fabricante = (
	SELECT codigo FROM fabricante WHERE upper(nombre) = 'ASUS'
    )
);

-- 
-- Subconsultas con IN y NOT IN:
-- 
-- 1. Devuelve los nombres de los fabricantes que tienen productos asociados. 
-- (Utilizando IN o NOT IN).
SELECT DISTINCT f.nombre FROM fabricante f, producto p
WHERE f.codigo IN (
	SELECT codigo_fabricante FROM producto
    )
ORDER BY f.nombre;


-- 2. Devuelve los nombres de los fabricantes que no tienen productos asociados. 
-- (Utilizando IN o NOT IN).
SELECT DISTINCT f.nombre FROM fabricante f, producto p
WHERE f.codigo NOT IN (
	SELECT codigo_fabricante FROM producto
    )
ORDER BY f.nombre;


-- 
-- Subconsultas (En la cláusula HAVING):
-- 
-- 1. Devuelve un listado con todos los nombres de los fabricantes que tienen el mismo número 
--    de productos que el fabricante Lenovo.

SELECT f.nombre FROM fabricante f
WHERE f.codigo IN (
	SELECT distinct p.codigo_fabricante
	FROM producto p
	GROUP BY p.codigo_fabricante
	HAVING count(p.codigo_fabricante) = (
		SELECT count(codigo) FROM producto 
		WHERE codigo_fabricante = (
			SELECT codigo FROM fabricante WHERE upper(nombre) = 'LENOVO'
			)
		)
	)
;