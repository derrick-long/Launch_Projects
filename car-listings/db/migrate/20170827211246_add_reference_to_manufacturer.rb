class AddReferenceToManufacturer < ActiveRecord::Migration[5.0]
  def change
    add_reference :cars, :manufacturer, index: true, null: false
  end
end
