class CreateVaccinations < ActiveRecord::Migration
  def change
    create_table :vaccinations do |t|
      t.date :prequalified
      t.text :type
      t.text :commercial_name
      t.text :pharmaceutical_form
      t.string :presentation
      t.integer :no_of_doses
      t.text :manufacturer
      t.text :responsible_nra

      t.timestamps null: false
    end
  end
end
