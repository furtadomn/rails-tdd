require 'pessoa'

describe 'Atributos' do
  it 'have_attributes' do
    pessoa = Pessoa.new
    pessoa.nome = "Marcella"
    pessoa.idade = 28
    expect(pessoa).to have_attributes(nome: "Marcella", idade: 28)
    expect(pessoa).to have_attributes(nome: starting_with("M"), idade: (be >= 25))
    expect(pessoa).to have_attributes(nome: a_string_starting_with("M"), idade: (a_value >= 25))
  end
end