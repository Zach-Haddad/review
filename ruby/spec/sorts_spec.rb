require 'rspec'
require 'sorts.rb'

describe "sorting problems" do
  before(:each) do
    @arr = [0, 3, 1, 4, 2, 5]
  end

  describe "merge sort" do
    it "sorts the array" do
      expect(@arr.merge_sort).to eq([ 0, 1, 2, 3, 4, 5 ])
    end
  end

  describe "quick sort" do
    it "sorts the array" do
      expect(@arr.quicksort).to eq([ 0, 1, 2, 3, 4, 5 ])
    end
  end

  describe "bubble sort" do
    it "sorts the array" do
      expect(@arr.bubblesort).to eq([ 0, 1, 2, 3, 4, 5 ])
    end
  end

end
