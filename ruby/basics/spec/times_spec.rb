require 'rspec'
require 'times.rb'

describe "time_sum" do
  it "returns a formatted string given a string of min:secs" do
    sample = "11:10 20:30"
    expect(time_sum(sample)).to eq("00:31:40")
  end
end
