class AddUserToHistories < ActiveRecord::Migration
  def change
    add_reference :histories, :user, index: true, foreign_key: true
  end
end
