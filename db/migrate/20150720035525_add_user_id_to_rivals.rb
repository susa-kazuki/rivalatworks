class AddUserIdToRivals < ActiveRecord::Migration
  def change
    add_column :rivals, :user_id, :integer
  end
end
