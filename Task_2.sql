SELECT abonent, region_id, MAX(dttm) as dttm
FROM Abonents
GROUP BY abonent, region_id