class CreateJoinTableCountryVaccination < ActiveRecord::Migration
  def change
    create_join_table :countries, :vaccinations do |t|
      t.index [:country_id, :vaccination_id]
      t.index [:vaccination_id, :country_id]
    end
  end
end
