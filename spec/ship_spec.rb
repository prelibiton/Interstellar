require  'spec_helper'

describe Ship do 

  before :each do
    @ship = Ship.new
  end

  describe "#new" do
    it "returns object of Ship" do
      expect(@ship).to be_a Ship
    end
  
    it "returns correct coordinate of x" do
      expect(@ship.x).to eql 1000
    end

    it "returns correct coordinate of y" do
      expect(@ship.y).to eql 1000
    end

    it "returns correct direction in degrees" do
      expect(@ship.degrees).to eql 0
    end

    it "returns correct score at the beginning of the game" do
      expect(@ship.score).to eql 0
    end

    it "returns correct number of lives" do
      expect(@ship.lives).to eql 4
    end

    it "returns correct radius of the object" do
      expect(@ship.radius).to eql 30
    end

    it "returns correct size of the object" do
      expect(@ship.size).to eql 1
    end

  end

  describe "#shoot" do
    it "can shoot" do
      @ship.shoot
    end

    it "returns Laser object" do
      expect(@ship.shoot).to be_a Laser
    end

  end
 
end
