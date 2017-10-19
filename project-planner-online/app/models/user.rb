class User < ActiveRecord::Base
  has_many :project_records
  has_many :projects, :through => :project_records

  validates :first_name, presence: true
  validates :last_name, presence: true
end
