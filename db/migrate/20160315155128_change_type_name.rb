class ChangeTypeName < ActiveRecord::Migration
  def change
    rename_column :vaccinations, :type, :science_name
  end
end
