describe (1..5), 'Ranges' do
  it '#cover' do
    expect(subject).to cover(2)
    expect(subject).to cover(2,5)
    expect(subject).not_to cover(0,6)
  end

  it { is_expected.to cover(2) } #descrição implícita
  it { is_expected.to cover(2,5) }
  it { should cover(2,5) }
  it { is_expected.not_to cover(0,6) }
end