# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

CSV.foreach('db/data.csv', headers: true) do |entry|
  attributes = {
    city_name: entry[0],
    total_pop: entry[1],
    age_0_19: entry[2],
    age_65_plus: entry[3],
    per_cap_income: entry[4],
    below_poverty: entry[5],
    percent_below_poverty: entry[6],
    percent_adequacy: entry[7],
    percent_c_section: entry[8],
    infant_deaths: entry[9],
    mortality_rate: entry[10],
    percent_low_birthweight: entry[11],
    percent_multiplebirths: entry[12],
    percent_financed: entry[13],
    percent_teen_births: entry[14]
  }

  record = TownHealthRecord.where(attributes).first

  if record.nil?
    record = TownHealthRecord.new(attributes)
  end

  record.save!
end
