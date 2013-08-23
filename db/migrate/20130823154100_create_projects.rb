class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.array :office_ids

      t.timestamps
    end
  end
end
