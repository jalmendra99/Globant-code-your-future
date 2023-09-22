-- Ejercicios de aprendizaje 1 - página 45
-- Fer Vega - jalmendra99@gmail.com
--
-- Ejecutar personal_inserts.sql


-- 1. Obtener los datos completos de los empleados.
SELECT * FROM empleados;


-- 2. Obtener los datos completos de los departamentos.
SELECT * FROM departamentos;


-- 3. Listar el nombre de los departamentos.
SELECT nombre_depto FROM departamentos;


-- 4. Obtener el nombre y salario de todos los empleados.
SELECT nombre, sal_emp FROM empleados;


-- 5. Listar todas las comisiones.
SELECT comision_emp FROM empleados;


-- 6. Obtener los datos de los empleados cuyo cargo sea ‘Secretaria’.
SELECT *  FROM empleados
WHERE cargo_emp = "Secretaria";


-- 7. Obtener los datos de los empleados vendedores, ordenados por nombre alfabéticamente.
SELECT * FROM empleados
WHERE cargo_emp = "Vendedor"
ORDER BY nombre;


-- 8. Obtener el nombre y cargo de todos los empleados, 
-- ordenados por salario de menor a mayor.
SELECT nombre, cargo_emp, sal_emp FROM empleados
ORDER BY sal_emp;


-- 9. Obtener el nombre de o de los jefes que tengan su departamento 
-- situado en la ciudad de “Ciudad Real”
SELECT nombre FROM empleados
WHERE cargo_emp LIKE "Jefe%"
AND id_depto IN (
SELECT id_depto FROM departamentos
WHERE UPPER(ciudad) = UPPER("Ciudad Real"));

-- SELECT id_depto FROM departamentos WHERE nombre_depto = "CIUDAD REAL";
-- SELECT * FROM departamentos;
-- SELECT * FROM departamentos WHERE nombre_depto = "Ciudad Real";
-- select distinct nombre, cargo_emp from empleados
-- where cargo_emp like "Jefe%";


-- 10. Elabore un listado donde para cada fila, figure el alias ‘Nombre’ y ‘Cargo’ 
-- para las respectivas tablas de empleados.

SELECT nombre AS "Nombre", cargo_emp AS "Cargo" FROM empleados;


-- 11. Listar los salarios y comisiones de los empleados del departamento 2000, 
-- ordenado por comisión de menor a mayor.
SELECT nombre, sal_emp, comision_emp FROM empleados
WHERE id_depto = 2000
ORDER BY comision_emp;


-- 12. Obtener el valor total a pagar a cada empleado del departamento 3000, 
-- que resulta de: sumar el salario y la comisión, más una bonificación de 500. 
-- Mostrar el nombre del empleado y el total a pagar, en orden alfabético.
SELECT nombre, SUM(sal_emp) + SUM(comision_emp) + 500 AS "Total a pagar"
FROM empleados
WHERE id_depto = 3000
GROUP BY nombre
ORDER BY nombre;

-- SELECT nombre, id_depto FROM empleados WHERE id_depto = 3000;
-- SELECT * FROM empleados WHERE id_depto = 3000;


-- 13. Muestra los empleados cuyo nombre empiece con la letra J.
SELECT * FROM empleados WHERE nombre LIKE "J%";


-- 14. Listar el salario, la comisión, el salario total (salario + comisión) y nombre, 
-- de aquellos empleados que tienen comisión superior a 1000.
SELECT nombre, sal_emp, comision_emp, sal_emp + comision_emp AS "Salario total"
FROM empleados
WHERE comision_emp > 1000;


-- 15. Obtener un listado similar al anterior, pero de aquellos empleados que NO tienen comisión.
SELECT nombre, sal_emp
FROM empleados
WHERE comision_emp = 0; -- = NULL;


-- 16. Obtener la lista de los empleados que ganan una comisión superior a su sueldo.
SELECT * FROM empleados
WHERE comision_emp > sal_emp;


-- 17. Listar los empleados cuya comisión es menor o igual que el 30% de su sueldo.
SELECT * FROM empleados
WHERE comision_emp <= sal_emp * 0.3;


-- 18. Hallar los empleados cuyo nombre no contiene la cadena “MA”
SELECT * FROM empleados
WHERE nombre NOT LIKE "%MA%";


-- 19. Obtener los nombres de los departamentos que sean “Ventas”, 
-- “Investigación” o ‘Mantenimiento.
-- Nota: ¿Pregunta mal redactada?
SELECT * FROM departamentos
WHERE UCASE(nombre_depto) IN ("VENTAS", "INVESTIGACION", "MANTENIMIENTO");


-- 20. Ahora obtener el contrario, los nombres de los departamentos 
-- que no sean “Ventas” ni “Investigación” ni ‘Mantenimiento.
SELECT * FROM departamentos
WHERE UCASE(nombre_depto) NOT IN ("VENTAS", "INVESTIGACION", "MANTENIMIENTO");


-- 21. Mostrar el salario más alto de la empresa.
SELECT MAX(sal_emp) FROM empleados;
SELECT MAX(sal_emp + comision_emp) FROM empleados;


-- 22. Mostrar el nombre del último empleado de la lista por orden alfabético.
SELECT nombre FROM empleados
ORDER BY nombre DESC
LIMIT 1;


-- 23. Hallar el salario más alto, el más bajo y la diferencia entre ellos.
SELECT MAX(sal_emp) AS "Máximo", MIN(sal_emp) AS "Mínimo", MAX(sal_emp) - MIN(sal_emp) AS "Diferencia"
FROM empleados;


-- 24. Hallar el salario promedio por departamento.
SELECT AVG(sal_emp), id_depto FROM empleados
GROUP BY id_depto;

-- Agregando info de departamentos..
SELECT AVG(sal_emp), empleados.id_depto, nombre_depto FROM empleados, departamentos
WHERE empleados.id_depto = departamentos.id_depto
GROUP BY empleados.id_depto;


-- 25. Consultas con Having. Hallar los departamentos que tienen más de tres
-- empleados. Mostrar el número de empleados de esos departamentos. 
SELECT COUNT(*) AS "Cantidad de empleados", id_depto FROM empleados
GROUP BY id_depto
HAVING COUNT(*) > 3;


-- 26. Consultas con Having. Hallar los departamentos que no tienen empleados
SELECT COUNT(*) AS "Cantidad de empleados", id_depto FROM empleados
GROUP BY id_depto
HAVING COUNT(*) = 0;

-- Agregando info de departamentos..
SELECT id_emp, departamentos.* 
FROM empleados RIGHT JOIN departamentos
ON empleados.id_depto = departamentos.id_depto
WHERE id_emp = NULL;


-- 28. Consulta con Subconsulta. Mostrar la lista de los empleados 
-- cuyo salario es mayor o igual que el promedio de la empresa. 
-- Ordenarlo por departamento.
SELECT * FROM empleados
WHERE sal_emp >= (
SELECT AVG(sal_emp) FROM empleados)
ORDER BY id_depto;

-- Agregando info de departamentos..
SELECT empleados.*, departamentos.* 
FROM empleados JOIN departamentos
ON empleados.id_depto = departamentos.id_depto
WHERE sal_emp >= (SELECT AVG(sal_emp) FROM empleados)
ORDER BY empleados.id_depto;

