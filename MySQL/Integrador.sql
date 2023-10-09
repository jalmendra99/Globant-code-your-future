-- Ejercicios extra 1 - página 49
-- Fer Vega - jalmendra99@gmail.com
--
-- Ejecutar nba.sql
use nba


-- Resultados:
-- 
-- Posición A: 2
-- Clave A: 14043
-- Posición B: 3
-- Clave B: 3480
-- Posición C: 1.0000
-- Clave C: 631
-- Posición D: 4
-- Clave D: 191


-- ----------
-- CANDADO A 
-- ----------
-- 
-- Posición: El candado A está ubicado en la posición calculada 
-- a partir del número obtenido en la/s siguiente/s consulta/s: 
-- 
-- Teniendo el máximo de asistencias por partido, muestre 
-- cuantas veces se logró dicho máximo. 
-- 
-- Este resultado nos dará la posición del candado (1, 2, 3 o 4)
SELECT max(Asistencias_por_partido) FROM estadisticas; 
-- 34

SELECT count(Asistencias_por_partido) AS 'Posición A'
FROM estadisticas 
WHERE Asistencias_por_partido = (
	SELECT max(Asistencias_por_partido)
    FROM estadisticas
    )
;
-- Posición A: 2


-- Clave: La clave del candado A estará con formada por 
-- la/s siguientes consulta/s a la base de datos:
-- 
-- Muestre la suma total del peso de los jugadores, donde la conferencia 
-- sea Este y la posición sea centro o esté comprendida en otras posiciones.
SELECT sum(j.Peso) AS 'Clave A'
FROM jugadores j
INNER JOIN equipos e ON j.Nombre_equipo = e.Nombre
WHERE upper(e.Conferencia) = "EAST"
AND upper(j.Posicion) LIKE "%C%";
-- Clave A: 14043



-- ----------
-- CANDADO B 
-- ----------
-- 
-- Posición: El candado B está ubicado en la posición calculada 
-- a partir del número obtenido en la/s siguiente/s consulta/s:
-- 
-- Muestre la cantidad de jugadores que poseen más asistencias por partidos, 
-- que el numero de jugadores que tiene el equipo Heat.
-- 
-- Este resultado nos dará la posición del candado (1, 2, 3 o 4)
SELECT count(j.codigo) AS 'Posición B'
FROM jugadores j
INNER JOIN estadisticas e ON j.codigo = e.jugador
WHERE e.Asistencias_por_partido > (
	SELECT count(codigo)
    FROM jugadores
    WHERE upper(Nombre_equipo) = 'HEAT'
    )
;
-- Posición B: 3


-- Clave: La clave del candado B estará con formada por 
-- la/s siguientes consulta/s a la base de datos:
-- 
-- La clave será igual al conteo de partidos jugados durante las temporadas del año 1999.
SELECT count(codigo) AS 'Clave B' FROM partidos WHERE temporada LIKE '%99%';
-- Clave B: 3480



-- ----------
-- CANDADO C 
-- ----------
-- 
-- Posición: El candado C está ubicado en la posición calculada 
-- a partir del número obtenido en la/s siguiente/s consulta/s:
-- 
-- La posición del código será igual a la cantidad de jugadores 
-- que proceden de Michigan y forman parte de equipos de la conferencia oeste.
-- Al resultado obtenido lo dividiremos por la cantidad de jugadores 
-- cuyo peso es mayor o igual a 195, y a eso le vamos a sumar 0.9945.
-- 
-- Este resultado nos dará la posición del candado (1, 2, 3 o 4)

-- Primera parte...
SELECT count(j.codigo) AS 'Posición C'
FROM jugadores j 
INNER JOIN equipos e ON e.Nombre = j.Nombre_equipo
WHERE upper(j.Procedencia) = 'MICHIGAN'
AND upper(e.Conferencia) = 'WEST';
-- 2

-- Segunda parte...
SELECT count(codigo) FROM jugadores WHERE Peso >= 195;
-- 362

-- Juntando los resultados de primera y segunda parte, más el tercer término...
SELECT (2 / 362) + 0.9945 AS 'Posición C' FROM DUAL;
-- Posición C: 1.0000

-- Todo en una sola consulta horrible...
SELECT (
	(
	SELECT count(j.codigo) 
	FROM jugadores j 
	INNER JOIN equipos e ON e.Nombre = j.Nombre_equipo
	WHERE upper(j.Procedencia) = 'MICHIGAN'
	AND upper(e.Conferencia) = 'WEST'
    )
    /
    ( SELECT count(codigo) FROM jugadores WHERE Peso >= 195 )
) + 0.9945 AS 'Posición C' FROM DUAL;
-- Posición C: 1.0000


-- Clave: La clave del candado C estará conformada por 
-- la/s siguientes consulta/s a la base de datos:
-- 
-- Para obtener el siguiente código deberás redondear hacia abajo el resultado
-- que se devuelve de sumar: el promedio de puntos por partido, 
-- el conteo de asistencias por partido, y la suma de tapones por partido. 
-- Además, este resultado debe ser, donde la división sea central.
SELECT floor(avg(e.Puntos_por_partido) + count(e.Asistencias_por_partido) + sum(e.Tapones_por_partido)) AS 'Clave C'
FROM estadisticas e
INNER JOIN jugadores j ON j.codigo = e.jugador
INNER JOIN equipos eq ON eq.Nombre = j.Nombre_equipo
WHERE upper(eq.Division) = 'CENTRAL';
-- Clave C: 631



-- ----------
-- CANDADO D
-- ----------
-- 
-- Posición: El candado D está ubicado en la posición calculada 
-- a partir del número obtenido en la/s siguiente/s consulta/s:
-- 
-- Muestre los tapones por partido del jugador Corey Maggette 
-- durante la temporada 00/01. Este resultado debe ser redondeado. 
-- Nota: el resultado debe estar redondeado
-- 
-- Este resultado nos dará la posición del candado (1, 2, 3 o 4)
SELECT round(e.Tapones_por_partido) AS 'Posición D'
FROM estadisticas e
INNER JOIN jugadores j ON e.jugador = j.codigo
WHERE upper(j.Nombre) = 'COREY MAGGETTE'
AND e.temporada = '00/01';
-- Posición D: 4


-- Clave: La clave del candado D estará con formada por 
-- la/s siguientes consulta/s a la base de datos:
-- 
-- Para obtener el siguiente código deberás redondear hacia abajo, 
-- la suma de puntos por partido de todos los jugadores de procedencia argentina.
SELECT floor(sum(e.Puntos_por_partido)) AS 'Clave D'
FROM estadisticas e
INNER JOIN jugadores j ON j.codigo = e.jugador
WHERE upper(j.Procedencia) = 'ARGENTINA';
-- Clave D: 191


