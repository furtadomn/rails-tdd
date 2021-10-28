describe 'Predicados' do
  it 'odd' do
    expect(1).to be_odd
  end

  it 'even' do
    expect(2).to be_even
  end

  it 'zero' do
    expect(0).to be_zero
  end

  it 'not zero' do
    expect(7).not_to be_zero
  end

  it 'empty' do
    expect([]).to be_empty
  end
end