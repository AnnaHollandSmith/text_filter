require "filter"

describe "filter" do
  it 'returns "r-d" when given red' do
    expect(filter("red")).to eq("r-d")
  end

  it 'returns "gr--n" when given green' do
    expect(filter("green")).to eq("gr--n")
  end
end
