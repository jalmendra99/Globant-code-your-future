-- Queries del ejercicio de aprendizaje 1
-- página 14 - tienda
-- 
-- USE tienda
--


-- a) Lista el nombre de todos los productos que hay en la tabla producto. 
SELECT nombre FROM producto;


-- b) Lista los nombres y los precios de todos los productos de la tabla producto. 
SELECT nombre, precio FROM producto;


-- c) Listar aquellos productos que su precio esté entre 120 y 202. 
SELECT * FROM producto WHERE precio BETWEEN 120 AND 202;


-- d) Buscar y listar todos los Portátiles de la tabla producto. 
SELECT * FROM producto WHERE upper(nombre) LIKE '%portatil%';


-- e) Listar el nombre y el precio del producto más barato.
SELECT nombre, precio FROM producto WHERE precio = (
SELECT min(precio) FROM producto);


-- f) Ingresar un producto a la base de datos. 
INSERT INTO producto VALUES (12, 'Portatil Legion Y 500', 1200, 2);
-- DELETE FROM producto WHERE codigo = 12;

-- g) Ingresar un fabricante a la base de datos 
INSERT INTO fabricante VALUES (10, 'LG');
-- DELETE FROM fabricante WHERE codigo = 10;


-- h) Editar un producto con datos a elección.
UPDATE producto SET nombre = 'Portatil Legion Y 520' WHERE codigo = 12;



