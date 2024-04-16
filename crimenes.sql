---Ejercicio 1
select * from crime_scene_report where city like "SQ%" and date ="20180115" and type = "murder"
 
---Ejercicio 2
select id, name, address_street_name, max(address_number) from person where address_street_name = "Northwestern Dr"
select * from interview where person_id = "14887"

select * from person where name like "%Annabel%" and address_street_name = "Franklin Ave"
select * from interview where person_id = "16371"

--
select * from get_fit_now_check_in where membership_id like "48Z%" 
select * from get_fit_now_member where membership_status = "gold" and person_id = "67318"
select * from drivers_license where plate_number like "%H42W%" and gender = "male"
select * from person where license_id = "423327"
--mebrio gold: Jeremy Bowers: 423327, id_1: 67318, id_2:42Z55
--Tushan Chandra: 664760, id: 51739
--

select * from interview where person_id = "67318"

select * from drivers_license where car_make = "Tesla" and hair_color = "red" and gender = "female"
--id: 202298, 291182, 918773
--id: sospechoza: 99716 , 90700, 78881 
--Contrato al asesino: Miranda Priestly
select * from facebook_event_checkin where date like "201712%" and person_id = "99716"

select * from person where license_id = "918773"
select * from person where license_id = "202298"
