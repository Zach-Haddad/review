require 'rspec'
require 'searches.rb'

describe "searching problems" do
  describe "standard binary search" do
    before(:each) do
      @arr = [1,2,3,4,5]
    end

    it "finds the element left of midpt" do
      expect(@arr.binary_search(1)).to eq(0)
    end

    it "finds the element right of midpt" do
      expect(@arr.binary_search(4)).to eq(3)
    end

    it "finds the element at midpt" do
      expect(@arr.binary_search(3)).to eq(2)
    end
  end

  describe "recursive binary search" do
    before(:each) do
      @arr = [1,2,3,4,5]
    end

    it "finds the element left of midpt" do
      expect(@arr.recursive_binary(1)).to eq(0)
    end

    it "finds the element right of midpt" do
      expect(@arr.recursive_binary(4)).to eq(3)
    end

    it "finds the element at midpt" do
      expect(@arr.recursive_binary(3)).to eq(2)
    end
  end

  describe "find first occurence in sorted array" do
    it "finds the first occurence of a number in a sorted array" do
      expect([1,2,3,4,5].find_first_in_sorted(2)).to eq(1)
    end

    it "accounts for duplicates" do
      expect([1,1,1,1,1].find_first_in_sorted(1)).to eq(0)
      expect([1,1,3,3,3].find_first_in_sorted(1)).to eq(0)
      expect([2,3,1,3,1].find_first_in_sorted(1)).to eq(2)
    end
  end

end
