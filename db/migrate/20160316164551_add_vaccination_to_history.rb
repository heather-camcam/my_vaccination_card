class AddVaccinationToHistory < ActiveRecord::Migration
  def change
    add_reference :histories, :vaccination, index: true, foreign_key: true
  end
end
