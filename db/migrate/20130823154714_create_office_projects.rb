class CreateOfficeProjects < ActiveRecord::Migration
  def change
    create_table :office_projects do |t|
      t.integer :office_id
      t.integer :project_id

      t.timestamps
    end
  end
end
