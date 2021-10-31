describe 'Marcella' do
  it 'String' do
    str = subject
    expect(str.size).to eq(8)
  end
end

describe [1,2,3] do
  it 'Array' do
    expect(subject).to be_kind_of(Array)
  end
end