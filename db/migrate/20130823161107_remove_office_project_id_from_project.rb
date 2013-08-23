class RemoveOfficeProjectIdFromProject < ActiveRecord::Migration
  def change
    remove_column :projects, :office_project_id
  end
end
