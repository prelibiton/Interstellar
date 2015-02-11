require  'spec_helper'

describe Enemy do 

  describe "#new" do
    it "should raise an ArgumentError if no parameters are passed" do
      expect { Enemy.new }.to raise_error(ArgumentError)
    end
  end
  
end
