class ChangeZipType < ActiveRecord::Migration[5.0]
  def up
    change_column :restaurants, :zip, :string
  end

  def down
    change_column :restaurants, :zip, :integer
  end
end
