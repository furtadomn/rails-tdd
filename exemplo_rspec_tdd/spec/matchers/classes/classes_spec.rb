require 'string_nao_vazia'

describe 'Classes' do
  it 'be_instance_of' do # exatamente o tipo da classe
    expect(10).to be_instance_of(Integer)
    expect("texto").to be_instance_of(String)
    expect([1,2,3]).to be_instance_of(Array)
  end

  it 'be_kind_of' do # pode ser por herança
    expect(10).to be_kind_of(Integer)

    str = StringNaoVazia.new
    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(StringNaoVazia)
  end

  it 'respond_to' do # verificar se responde a um tipo de método
    expect("ruby").to respond_to(:size)
    expect("ruby").to respond_to(:count)
  end

  it 'be_a' do # mesma função do be_kind_of
    str = StringNaoVazia.new
    expect(str).to be_a(String)
    expect(str).to be_a(StringNaoVazia)
  end

  it 'be_an' do # mesma função do be_kind_of
    array = [1,2,3]
    expect(array).to be_an(Array)
  end
end