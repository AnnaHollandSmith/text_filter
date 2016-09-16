require "filter"

describe "filter" do
  context "it replaces the vowels of bad words with dashes" do
  it 'returns "r-d" when given "red"' do
    expect(filter("red")).to eq("r-d")
  end

  it 'returns "gr--n" when given "green"' do
    expect(filter("green")).to eq("gr--n")
  end

  it 'returns "bl--" when given "blue"' do
    expect(filter("blue")).to eq("bl--")
  end

  it 'returns "yellow" when given yellow' do
    expect(filter("yellow")).to eq("y-ll-w")
  end
end

  context "it does not replace the vowels for words that are not bad" do
    it 'returns "black" when given "black"' do
      expect(filter("black")).to eq("black")
    end
  end
end
