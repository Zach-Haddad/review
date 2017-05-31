require 'rspec'
require 'hashes.rb'

describe "Hash problems" do
  describe "two sum" do
    before(:each) do
      @arr = [1,2,5,4,3,8]
    end

    it "returns the indices of the pair that sums to the target" do
      expect(@arr.two_sum(3)).to eq([1, 0])
    end

    it "returns nil if no eligible pair exists" do
      expect(@arr.two_sum(220)).to eq(nil)
    end
  end
end
