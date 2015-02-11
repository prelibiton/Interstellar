require  'spec_helper'

describe Level do 

  describe "#new" do
    it "should raise an ArgumentError if no parameters are passed" do
      expect { Level.new }.to raise_error(ArgumentError)
    end
  end
  
end
