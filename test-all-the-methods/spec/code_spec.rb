require "simplecov"
SimpleCov.start
require "pry"
require_relative "../code"

RSpec.describe "perimeter" do
  it "returns 20 for a square with a width of 5" do
    expect(perimeter(5)).to eq(20)
  end

  it "returns 30 for a rectangle with a width of 5 and a length of 10" do
    expect(perimeter(5,10)).to eq(30)
  end
end

RSpec.describe "average" do
  it "adds grades then divides them by the amount of grades returns the average" do
  expect(average([10,20,30])).to eq(20)
  end
end

RSpec.describe "rankings" do
  it "returns list of students with their index as ranking from a list" do
    expect(rankings(["Bill","Tommy", "Sonya"])).to eq("1. Bill\n2. Tommy\n3. Sonya\n")
  end
end

RSpec.describe "greet" do
  it "should return Hola and the name variable for Spanish" do
    expect(greet('Billy','spanish')).to eq(puts "Hola Billy!")
    end

  it "returns Ciao and the name variable for Italian" do
    expect(greet('Billy','italian')).to eq(puts "Ciao Billy!")
  end

  it "returns Bonjour and the name variable for French" do
    expect(greet('Thomas','french')).to eq(puts "Bonjour Thomas!")
  end

  it "returns Hi and the name variable for all other lanuages" do
    expect(greet('Willy','klingon')).to eq(puts "Hi Willy!")
  end
end

RSpec.describe "print_puzzle" do
  it "returns revealed words from a guess otherwise returns _ " do
  expect(print_puzzle("cat","a")).to eq("cat")
end #comeback
end

RSpec.describe "divisible_by_three" do
  it "takes a number and returns if it is divisible by three using modulo" do
    expect(divisible_by_three(9)).to eq(true)
  end
end

RSpec.describe "perfect_square?" do
  it "if the number is less than one rasises an ArgumentError" do
    expect{perfect_square?(-2)}.to raise_error(ArgumentError) #why does this work?
  end

  it "returns true if the square of the number equals the incrementing current_number" do
    expect(perfect_square?(9)).to eq(true)
end

  it "returns false if the number is not a perfect square" do
    expect(perfect_square?(3)).to eq(false)
  end
end
