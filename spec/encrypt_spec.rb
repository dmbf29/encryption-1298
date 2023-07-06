require_relative '../encrypt'
# RSPEC Tests:
# 1. describe -> describing the method
# 2. it -> describing what we're testing
# 3. expect -> checking what the test is returning

describe '#encrypt' do
  it 'should return an empty string when given an empty string' do
    expect(encrypt('')).to eq('')
  end

  it 'should return "B" when given "E" to encrypt' do
    expect(encrypt('E')).to eq('B')
  end

  it 'should return an encrypted sentence when given the one with all the letters' do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expect(actual).to eq("QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD")
  end

  it 'should return an encrypted sentence with special character' do
    actual = encrypt("THE QUICK, BROWN FOX JUMPS OVER THE LAZY DOG!")
    expect(actual).to eq("QEB NRFZH, YOLTK CLU GRJMP LSBO QEB IXWV ALD!")
  end


end


# encrypt("???") == "???"
