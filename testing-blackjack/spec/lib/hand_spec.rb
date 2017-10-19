require "spec_helper"

describe Hand do
  # These UTF-8 characters will be useful for making different hands:
  # '♦', '♣', '♠', '♥'

  let(:hand) { Hand.new(["10♦", "J♥"]) }
  let(:hand_2) { Hand.new(["5♣","K♣"]) }
  let(:hand_3) { Hand.new(["A♥","A♠"]) }
  let(:hand_4) { Hand.new(["15♦", "10♦"])}


  # You can add more sample hands

 #double ace test, cards cannot add up to more than 21
  describe "#calculate_hand" do
    it "converts cards to correct points" do
    expect(hand.calculate_hand).to eq(20)
    expect(hand_2.calculate_hand).to eq(15)
    end

    it  "makes the ace equal to 1 or 11 depending on the best outcome" do
    expect(hand_3.calculate_hand).to eq(12) #this works for testing our ace
    end

    it "returns an error message for card values higher than 21" do
      expect(hand_4.calculate_hand).to eq("Someone is cheating!")
    end
  end
end
