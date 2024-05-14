SELECT a.name, a.ssn,  f.membership_start_date, f.membership_status, f.id FROM person a
JOIN get_fit_now_member f on a.id = f.person_id
WHERE membership_start_date like "2018%" 

ORDER by membership_status, ssn