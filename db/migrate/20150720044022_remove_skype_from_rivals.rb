class RemoveSkypeFromRivals < ActiveRecord::Migration
  def change
    remove_column :rivals, :skype, :string
  end
end
