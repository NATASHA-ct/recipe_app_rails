class AddMeasurementUnitToFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :foods, :measurement_unit, :string
  end
end
