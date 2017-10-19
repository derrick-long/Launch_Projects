
require 'csv'

class Stuff

  def print
    CSV.foreach('test_1.csv') do |row|
      puts row
    end
  end
end



test = Stuff.new
test.print
