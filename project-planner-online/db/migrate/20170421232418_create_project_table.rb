class CreateProjectTable < ActiveRecord::Migration
  def change
    create_table :projects do |table|
      table.string :name, null: false
      table.string :description
    end
  end
end
