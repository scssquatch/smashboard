class AddActiveToMetric < ActiveRecord::Migration
  def change
    add_column :metrics, :active, :boolean
  end
end
