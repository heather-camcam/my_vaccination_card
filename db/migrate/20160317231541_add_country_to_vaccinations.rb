class AddCountryToVaccinations < ActiveRecord::Migration
  def change
    add_reference :vaccinations, :country, index: true, foreign_key: true
  end
end
