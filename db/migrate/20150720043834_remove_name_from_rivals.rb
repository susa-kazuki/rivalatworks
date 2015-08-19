class RemoveNameFromRivals < ActiveRecord::Migration
  def change
    remove_column :rivals, :name, :string
  end
end
