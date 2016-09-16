require 'filter'

describe 'filter' do
  it 'returns "r-d" when given red' do
    expect(filter('red')).to eq "r-d"
  end
end
