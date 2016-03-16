class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.date :date_given
      t.text :clinic_name
      t.date :expiry_date

      t.timestamps null: false
    end
  end
end
