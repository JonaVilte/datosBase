SELECT * FROM BEWOHNER
SELECT * FROM inhabitant WHERE state ='friendly'
SELECT * FROM inhabitant WHERE state ='friendly' and job = 'weaponsmith'
SELECT * FROM inhabitant WHERE job LIKE '%smith' AND state ='friendly' 
SELECT personid FROM inhabitant WHERE name = 'Stranger' 
SELECT gold FROM inhabitant  where name = 'Stranger' 
SELECT * FROM ITEM  where owner is NULL

