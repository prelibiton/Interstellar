require  'spec_helper'

describe Laser do 

  before :each do
    @laser = Laser.new(1, 1, 301, 1, 90)
  end

  describe "#new" do
    it "returns object of Laser" do
      expect(@laser).to be_a Laser
    end
  
    it "should raise an ArgumentError if no parameters are passed" do
      expect { Laser.new }.to raise_error(ArgumentError)
    end

    it "returns correct coordinate of x" do
      expect(@laser.x).to eql 1
    end

    it "returns correct coordinate of y" do
      expect(@laser.y).to eql 1
    end

    it "returns correct radius of the laser" do
      expect(@laser.radius).to eql 30
    end

    it "returns correct size of the laser" do
      expect(@laser.size).to eql 1
    end
  end

  describe "#done?" do
    it "done? returns false" do
      expect(@laser.done?).to be_falsey
    end
  end
  
end
