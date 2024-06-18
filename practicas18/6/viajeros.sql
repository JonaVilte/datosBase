---1
SELECT count(DISTINCT NOMBRE_ESTACION) FROM barcelona_viajeros_por_franja_xlsx 
----DISTINCT se usa adentro de un 'count, sum' para contar o sumar valores absolutos

---2
SELECT NOMBRE_ESTACION FROM barcelona_viajeros_por_franja_xlsx 
GROUP by  NOMBRE_ESTACION

---3
SELECT NOMBRE_ESTACION, sum(VIAJEROS_BAJADOS), sum(VIAJEROS_SUBIDOS) FROM barcelona_viajeros_por_franja_xlsx 
GROUP by  NOMBRE_ESTACION

---4
SELECT NOMBRE_ESTACION, sum(VIAJEROS_BAJADOS) , sum(VIAJEROS_SUBIDOS),
sum(VIAJEROS_BAJADOS) - sum(VIAJEROS_SUBIDOS) 
as diferenciaDePasajeros FROM barcelona_viajeros_por_franja_xlsx 
GROUP by  NOMBRE_ESTACION

SELECT NOMBRE_ESTACION, sum(VIAJEROS_BAJADOS) - sum(VIAJEROS_SUBIDOS) as diferenciaDePasajeros FROM barcelona_viajeros_por_franja_xlsx 
GROUP by  NOMBRE_ESTACION

---5
SELECT  NOMBRE_ESTACION, avg(VIAJEROS_SUBIDOS), TRAMO_HORARIO FROM barcelona_viajeros_por_franja_xlsx 
GROUP by  NOMBRE_ESTACION 
ORDER by avg(VIAJEROS_SUBIDOS) DESC
LIMIT 1

---6
SELECT  NOMBRE_ESTACION, sum(VIAJEROS_SUBIDOS), sum(TRAMO_HORARIO) FROM barcelona_viajeros_por_franja_xlsx 
GROUP by  NOMBRE_ESTACION 
ORDER by VIAJEROS_SUBIDOS
---------------falta

---7
---8
---9
---10
---11
---12