class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :city_name
      t.integer :total_pop
      t.integer :age_0_19
      t.integer :age_65_plus
      t.integer :per_cap_income
      t.integer :below_poverty
      t.float :percent_below_poverty
      t.float :percent_adequacy
      t.float :percent_c_section
      t.integer :infant_deaths
      t.float :mortality_rate
      t.float :percent_low_birthweight
      t.float :percent_multiplebirths
      t.float :percent_financed
      t.float :percent_teen_births

      t.timestamps
    end
  end
end
