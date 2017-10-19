class CreateProjectRecordsTable < ActiveRecord::Migration
  def change
    create_table :project_records do |t|
      t.belongs_to :user, index: true
      t.belongs_to :project, index: true
    end
  end
end
