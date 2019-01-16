require_relative '../lib/multiple'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(4)).to eq(false)
    expect(is_multiple_of_3_or_5?(7)).to eq(false)
    expect(is_multiple_of_3_or_5?(202)).to eq(false)
    expect(is_multiple_of_3_or_5?(46)).to eq(false)
  end
end

describe "the sum_multiple_of_3_or_5 method" do
  it "should return the sum of 3 & 5 multiples" do
    expect(sum_of_3_or_5_multiples(1000)).to eq(233168)
    expect(sum_of_3_or_5_multiples(10)).to eq(23)
  end

  it "should return x is not an INTEGER!" do
    expect(sum_of_3_or_5_multiples(3.5)).to eq("3.5 is not an INTEGER!")
    expect(sum_of_3_or_5_multiples("text")).to eq("text is not an INTEGER!")
  end
end