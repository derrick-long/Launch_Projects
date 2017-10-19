class Article
  attr_reader :title, :url, :description #gotta do it hash style
  def initialize(args = {})
    @title = args[:title]
    @url = args[:url]
    @description = args[:description]
  end
end
