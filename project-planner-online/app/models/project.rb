class Project < ActiveRecord::Base
  has_many :project_records
  has_many :users, :through => :project_records

  validates :name, presence: true
end
