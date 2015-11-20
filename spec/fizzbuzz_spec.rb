require 'fizzbuzz'

describe 'fizzbuzz' do
  it 'returns "fizz" when passed 3' do
    expect(fizzbuzz(3)).to eq 'fizz'
  end

  it 'returns "buzz" when passed 5' do
    expect(fizzbuzz(5)).to eq 'buzz'
  end

  it 'returns "fizzbuzz" when passed 15' do
    expect(fizzbuzz(15)).to eq 'fizzbuzz'
  end

  # it 'returns #{number} when passed non-divisible number by 3 or 5'       do
  #     expect(fizzbuzz(8)).to eq 8
  # end

  it 'returns #{number} when passed non-divisible numbers' do
    array = *(1..100)
    array = array.select {|value| value % 5 != 0 && value % 3 != 0 }
    array.each do |value|
        expect(fizzbuzz(value)).to eq value
      end

  end
end
