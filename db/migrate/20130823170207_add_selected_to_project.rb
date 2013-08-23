class AddSelectedToProject < ActiveRecord::Migration
  def change
    add_column :projects, :selected, :boolean, default: true
  end
end
