SELECT name, address_number, address_street_name, ssn FROM person WHERE address_street_name like "%Franklin Ave"
 ORDER by address_number
 LIMIT 1 OFFSET 44