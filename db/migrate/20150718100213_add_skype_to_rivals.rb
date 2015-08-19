class AddSkypeToRivals < ActiveRecord::Migration
  def change
    add_column :rivals, :skype, :string
  end
end
