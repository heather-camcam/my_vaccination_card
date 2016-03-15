class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :vaccinations, :prequalified
  end
end
