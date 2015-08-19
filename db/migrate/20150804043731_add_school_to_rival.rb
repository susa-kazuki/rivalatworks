class AddSchoolToRival < ActiveRecord::Migration
  def change
    add_column :rivals, :school, :text
  end
end

