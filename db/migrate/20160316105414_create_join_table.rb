class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :vaccinations, :histories do |t|
      t.index [:vaccination_id, :history_id]
      t.index [:history_id, :vaccination_id]
    end
  end
end
