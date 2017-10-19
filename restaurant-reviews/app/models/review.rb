class Review < ApplicationRecord
  belongs_to  :restaurant
  validates :body, presence: true
  validates :rating, inclusion: { in: (1..5), message:  "must be between 1 - 5" }
end
