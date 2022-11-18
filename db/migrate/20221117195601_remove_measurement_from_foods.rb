class RemoveMeasurementFromFoods < ActiveRecord::Migration[7.0]
  def change
    remove_column :foods, :measurement, :string
  end
end
