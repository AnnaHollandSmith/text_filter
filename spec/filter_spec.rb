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

  context "it replaces the vowels of only bad words in a string" do
    it 'returns "this is r-d" when given "this is red"' do
      expect(filter("this is red")).to eq("this is r-d")
    end

    it 'returns "r-d and gr--n are bad" when given "red and green are bad"' do
      expect(filter("red and green are bad")).to eq("r-d and gr--n are bad")
    end
  end

  context "there are exceptions for which banned words must not be filtered" do
    it 'returns "covered" when given covered' do
      expect(filter("covered")).to eq("covered")
    end
  end

  context 'it replaces bad words when they are integrated into another word' do
    it 'returns "outnumber-d" when given "outnumbered"' do
      expect(filter("outnumbered")).to eq("outnumber-d")
    end
  end
end
