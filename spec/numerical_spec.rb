require  'spec_helper'

describe Numerical do 

  describe "#new" do
    it "should raise an ArgumentError if no parameters are passed" do
      expect { Numerical.new }.to raise_error(ArgumentError)
    end
  end
  
end
