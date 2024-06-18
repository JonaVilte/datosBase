---1
INSERT INTO regions (region_name)
VALUES('África'
)

INSERT INTO regions (region_name)
VALUES('Middle east'
)

---2
UPDATE countries SET region_id = 5 WHERE country_name in ( 'Nigeria' , 'Egypt' ,'Zambia')

UPDATE countries SET region_id = 6 WHERE country_name in ( 'India' , 'Zimbabwe')


---3
DELETE FROM regions WHERE region_id = 4

---4
INSERT INTO countries (country_id, country_name, region_id)
VALUES
('KN', 'Kenia', '5'),
('MC', 'Marruecos', '5');


INSERT INTO countries (country_id, country_name, region_id)
VALUES
('TQ', 'Turquia', '6'),
('IK', 'Irak', '6');

---5
INSERT INTO regions (region_id, region_name)
VALUES
('4', 'Meddle east and África')

---6
UPDATE countries SET region_id = 4 WHERE country_name in ---Despues del 'in' va un () a dentro de este iria la consulta
( SELECT country_name FROM countries WHERE region_id in (5, 6))----Subconsulta


