require_relative "../../lib/airplane"

describe Airplane do
  describe "#initialize" do
    it "Airplane should have a  type, wing loading, and horsepower as arguements" do
    airplane = Airplane.new("jet",10,2000)
    expect(airplane).to be_a(Airplane)
    end
  end

let(:airplane) { Airplane.new("jet",10,2000) } #remember correct syntax!


  describe "#horsepower" do
    it "Airplane should have a reader for horsepower" do
    expect(airplane.horsepower).to eq(2000)
  end
end

  describe "#type" do
    it "should have a reader for type" do
      expect(airplane.type).to eq("jet")
  end
end

  describe "#wing_loading do" do
    it "should have a reader for wing_loading" do
    expect(airplane.wing_loading).to eq(10)
    end
  end


  describe "#start" do
    it "should turn on the engine" do
    expect(airplane.start).to eq("Airplane started")
    end
  end

  describe "#start status" do
    it "should return a message indicating the plane is already on" do
    airplane.start
    expect(airplane.start).to eq("The plane is already on")
  end
end
  describe "#land" do
    it "should return a message if the plane has started but has not taken off" do
    airplane.start
    expect(airplane.land).to eq("The plane is already on the ground!")
  end
end

  describe "#land" do
    it "should return an error message if the plane has not been started" do
    expect(airplane.land).to eq("Airplane not started, please start")
    end
  end

  describe "#land" do
    it "should return a message saying the plane sucessfully landed if all steps are taken" do
      airplane.start
      airplane.takeoff
      expect(airplane.land).to eq("Airplane landed!")
    end
  end

  describe "#takeoff" do
    it "should not change the status of the plane to flying unless the plane has been started" do
    expect(airplane.takeoff).to eq("Airplane not started, please start")
    end
  end

  describe "#takeoff" do
    it "should change the plane status to flying if the plane has been started" do
    airplane.start
    expect(airplane.takeoff).to eq("Airplane launched.")
    end
  end





end
