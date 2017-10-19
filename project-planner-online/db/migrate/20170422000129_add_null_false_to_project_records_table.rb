class AddNullFalseToProjectRecordsTable < ActiveRecord::Migration
  def up
    change_column :project_records, :user_id, :integer,  null: false
    change_column :project_records, :project_id, :integer, null: false
  end

  def down
    change_column :project_records, :user_id, :integer
    change_column :project_records, :project_id, :integer
  end
end
