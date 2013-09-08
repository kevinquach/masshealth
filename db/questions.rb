#What 3 towns have the highest population of citizens that are 65 years and older?

TownHealthRecord.order('age_65_plus DESC').select("city_name").limit(3)

#What 3 towns have the highest population of citizens that are 19 years and younger?

TownHealthRecord.order('age_0_19 DESC').select("city_name").limit(3)

#What 5 towns have the lowest per capita income?

TownHealthRecord.order('per_cap_income ASC').select("city_name").limit(5)

#Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?

TownHealthRecord.order("percent_teen_births DESC").select("city_name", "percent_teen_births").where('city_name != ? and city_name != ? and city_name != ?', "Boston", "Becket", "Beverly").limit(1)

#Omitting Boston, what town has the highest number of infant mortalities?

TownHealthRecord.order("mortality_rate DESC").select("city_name", "mortality_rate").where('city_name != ?', "Boston").limit(1)

