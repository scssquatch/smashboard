class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.string :name
      t.string :token
      t.string :metric_project_id
      t.string :username
      t.string :password_digest
      t.integer :project_id

      t.timestamps
    end
  end
end
