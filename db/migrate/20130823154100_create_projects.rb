class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :office_project_id

      t.timestamps
    end
  end
end
