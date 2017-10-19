require 'csv'

class Article
  attr_reader :name, :url, :description
  def initialize(name,url,description)
    @name  = name
    @url = url
    @description = description
  end

  def save
    CSV.open('articles.csv', 'a') do |csv|
      csv << [@name,@url,@description]
    end
  end




  def self.all
    CSV.read('articles.csv')
  end

end
