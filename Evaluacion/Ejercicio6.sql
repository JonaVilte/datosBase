SELECT count(person_id), membership_status FROM get_fit_now_member
GROUP by membership_status
ORDER by count(person_id)DESC