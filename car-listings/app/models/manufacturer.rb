class Manufacturer < ApplicationRecord
  has_many :cars

  validates :name, presence: true, uniqueness: true
  validates :country, presence: true
end
