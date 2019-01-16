require_relative '../lib/day_trader'

describe "return the best option to buy & sell" do
  it "should return a day to buy & to sell" do
    expect(day_trader([1, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,5])
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([2,5])
    expect(day_trader([1, 3, 6, 9, 15, 8, 6, 1, 20])).to eq([1,9])
  end
end