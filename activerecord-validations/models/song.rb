class Song < ActiveRecord::Base
  validates :year, numericality: true, presence: true
  validates_length_of :year, within: 2..4
  validates :track_number, numericality:true, length: { maximum: 3 }
  validates :album, presence: true
  validates_length_of :album, within: 3..255
  validates_length_of :genre, within: 2..255
  validates :length_in_seconds, presence:true, length: { maximum: 5 }, numericality:true
  validates_length_of :title, within: 2..255
end
