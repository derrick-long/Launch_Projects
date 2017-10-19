class Recipe < ActiveRecord::Base
  has_many :comments
  validates :title, presence: true, uniqueness: true, :must_contain_sprouts


  def must_contain_sprouts
     if title.downcase.include?("brussels sprouts") == false
       errors.add(:sprouts, "must have brussels sprouts in the title")
    end
end
