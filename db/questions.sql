--What 3 towns have the highest population of citizens that are 65 years and older?

 SELECT city_name FROM "town_health_records" ORDER BY age_65_plus DESC LIMIT 3

 --What 3 towns have the highest population of citizens that are 19 years and younger?

SELECT city_name FROM "town_health_records" ORDER BY age_0_19 DESC LIMIT 3

--What 5 towns have the lowest per capita income?

SELECT city_name FROM "town_health_records" ORDER BY per_cap_income ASC LIMIT 5

--Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?

SELECT city_name, percent_teen_births FROM "town_health_records" WHERE (city_name != 'Boston' and city_name != 'Becket' and city_name != 'Beverly') ORDER BY percent_teen_births DESC LIMIT 1

--Omitting Boston, what town has the highest number of infant mortalities?

SELECT city_name, mortality_rate FROM "town_health_records" WHERE (city_name != 'Boston') ORDER BY mortality_rate DESC LIMIT 1
