-- Ejercicios extra 1 - página 49
-- Fer Vega - jalmendra99@gmail.com
--
-- Ejecutar nba.sql


-- 1. Mostrar el nombre de todos los jugadores ordenados alfabéticamente.
SELECT nombre FROM jugadores ORDER BY nombre;


-- 2. Mostrar el nombre de los jugadores que sean pivots (‘C’) 
-- y que pesen más de 200 libras, ordenados por nombre alfabéticamente.
SELECT nombre, posicion FROM jugadores
WHERE upper(posicion) LIKE "%C%"
AND peso > 200
ORDER BY nombre;


-- 3. Mostrar el nombre de todos los equipos ordenados alfabéticamente.
SELECT nombre FROM equipos ORDER BY nombre;


-- 4. Mostrar el nombre de los equipos del este (East). 
SELECT nombre, division FROM equipos
WHERE upper(division) LIKE "%EAST%";


-- 5. Mostrar los equipos donde su ciudad empieza con la letra ‘c’, 
-- ordenados por nombre. 
SELECT * FROM equipos
WHERE upper(ciudad) LIKE "C%"
ORDER BY nombre;


-- 6. Mostrar todos los jugadores y su equipo ordenados por nombre del equipo.
SELECT * FROM jugadores j
JOIN equipos e
ON j.Nombre_equipo = e.Nombre
ORDER BY nombre_equipo;


-- 7. Mostrar todos los jugadores del equipo “Raptors” ordenados por nombre.
SELECT * FROM jugadores
WHERE Nombre_equipo = "Raptors"
ORDER BY nombre;


-- 8. Mostrar los puntos por partido del jugador ‘Pau Gasol’.
SELECT e.Puntos_por_partido 
FROM estadisticas e, jugadores j
WHERE e.jugador = j.codigo
AND j.Nombre = "Pau Gasol";


-- 9. Mostrar los puntos por partido del jugador ‘Pau Gasol’ en la temporada ’04/05′.
SELECT e.Puntos_por_partido 
FROM estadisticas e, jugadores j
WHERE e.jugador = j.codigo
AND j.Nombre = "Pau Gasol"
AND temporada = "04/05";


-- 10. Mostrar el número de puntos de cada jugador en toda su carrera.
SELECT e.jugador, j.nombre, sum(e.Puntos_por_partido)
FROM estadisticas e, jugadores j
WHERE e.jugador = j.codigo
GROUP BY e.jugador;


-- 11. Mostrar el número de jugadores de cada equipo.
SELECT Nombre_equipo, count(codigo)
FROM jugadores
GROUP BY Nombre_equipo;


-- 12. Mostrar el jugador que más puntos ha realizado en toda su carrera.
SELECT j.Nombre, count(e.Puntos_por_partido) 
FROM jugadores j, estadisticas e
WHERE j.codigo = e.jugador
GROUP BY j.Nombre
ORDER BY count(e.Puntos_por_partido) DESC
LIMIT 1;


-- 13. Mostrar el nombre del equipo, conferencia y división 
-- del jugador más alto de la NBA.
-- 
-- Fer: checks..
-- SELECT Nombre, Altura FROM jugadores ORDER BY Altura DESC;

SELECT j.Nombre, e.Nombre, e.Conferencia, e.Division
FROM equipos e, jugadores j
WHERE e.Nombre = j.Nombre_equipo
AND j.Altura = (
	SELECT max(Altura) 
    FROM jugadores
    )
;


-- 14. Mostrar el partido o partidos (equipo_local, equipo_visitante y diferencia) 
-- con mayor diferencia de puntos.
--
-- Checks: Diferencia de puntos en partidos
-- SELECT equipo_local, equipo_visitante , abs(puntos_local - puntos_visitante) as 'Diferencia'
-- FROM partidos
-- ORDER BY abs(puntos_local - puntos_visitante) DESC;
-- Resultado:
-- Timberwolves vs Mavericks - 108 pts
-- Magic vs Suns             - 108 pts
-- Lakers vs Pacers          - 108 pts
-- Pistons vs Knicks         - 108 pts
--
-- Mayor diferencia de puntos en partidos
-- SELECT max(abs(puntos_local - puntos_visitante)) as 'Diferencia'
-- FROM partidos;
-- Resultado: 108
-- 
SELECT equipo_local, equipo_visitante
FROM partidos
WHERE abs(puntos_local - puntos_visitante) = (
	SELECT max(abs(puntos_local - puntos_visitante)) as 'Diferencia'
	FROM partidos
	)
;

-- 15. Mostrar quien gana en cada partido (codigo, equipo_local, equipo_visitante, 
-- equipo_ganador), en caso de empate sera null.
--
-- Checks: codigo y equipos que empataron:
SELECT codigo, equipo_local, equipo_visitante
FROM partidos
WHERE puntos_local = puntos_visitante;
-- Resultados: Incluyo solo 3 de ejemplo para verificar..
-- 22 Raptors vs Supersonics
-- 87 Grizzlies vs Suns
-- 154 Timberwolves vs Pistons
--
-- Checks: codigo y equipos, ganó local:
SELECT codigo, equipo_local, equipo_visitante
FROM partidos
WHERE puntos_local > puntos_visitante;
-- Resultados: Incluyo solo 3 de ejemplo para verificar..
-- 3 Raptors vs Clippers
-- 9 Raptors vs Pistons
-- 11 Raptors vs Pacers
-- 
SELECT codigo, equipo_local, equipo_visitante, 
	IF(puntos_local = puntos_visitante, null, 
		IF(puntos_local > puntos_visitante, equipo_local, equipo_visitante)
	) as 'Equipo ganador'
FROM partidos;
