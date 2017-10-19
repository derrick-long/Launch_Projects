class Car < ApplicationRecord
  belongs_to :manufacturer

  validates :name, presence: true
  validates :color, presence: true
  validates :year, presence: true, numericality: { greater_than_or_equal_to: 1920 }
  validates :mileage, presence: true, numericality: true
  validates :description, length: { in: 10..250 }, allow_blank: true
end
