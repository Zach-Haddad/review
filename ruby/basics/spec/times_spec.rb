require 'rspec'
require 'times.rb'

describe "time_sum" do
  it "returns a formatted string given a string of min:secs" do
    sample = "11:10 20:30"
    expect(time_sum(sample)).to eq("00:31:40")
  end

  it "correctly pads units" do
    sample = "1:1 2:2"
    expect(time_sum(sample)).to eq("00:03:03")
  end
end
