require "filter"

describe "filter" do
  context "it replaces the vowels of banned words with dashes" do
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

  it 'returns "y-ll-w gr--n bl-- r-d" when given "yellow green blue red"' do
    expect(filter("yellow green blue red")).to eq("y-ll-w gr--n bl-- r-d")
  end
end

  context "it does not replace the vowels for words that are not banned" do
    it 'returns "black" when given "black"' do
      expect(filter("black")).to eq("black")
    end

    it 'returns "this is a test" when given "this is a test"' do
      expect(filter("this is a test")).to eq("this is a test")
    end
  end

  context "it filters only banned words in a string that contains a banned word" do
    it 'returns "this is r-d" when given "this is red"' do
      expect(filter("this is red")).to eq("this is r-d")
    end

    it 'returns "r-d and gr--n are banned" when given "red and green are banned"' do
      expect(filter("red and green are banned")).to eq("r-d and gr--n are banned")
    end
  end

  context "there are exceptions for which banned words must not be filtered" do
    it 'returns "covered" when given covered' do
      expect(filter("covered")).to eq("covered")
    end

    it 'returns "evergreen" when given "evergreen"' do
      expect(filter("evergreen")).to eq("evergreen")
    end

    it 'returns "blues" when given "blues"' do
      expect(filter("blues")).to eq("blues")
    end

    it 'returns "coloured" when given "coloured"' do
      expect(filter("coloured")).to eq("coloured")
    end

    it 'returns "greenbelt" when given "greenbelt"' do
      expect(filter("greenbelt")).to eq("greenbelt")
    end
  end

  context 'it replaces bad words when they are integrated into another word' do
    it 'returns "outnumber-d" when given "outnumbered"' do
      expect(filter("outnumbered")).to eq("outnumber-d")
    end

    it 'returns "they br-d cows" when given "they br-d cows"' do
      expect(filter("they bred cows")).to eq("they br-d cows")
    end
  end
end
