require 'rails_helper'

RSpec.describe Aluno, type: :model do
  it 'invalido sem nome' do
    aluno = Aluno.new
    aluno.email = "teste@gmail.com"
    expect(aluno).not_to be_valid
  end
  it 'invalido sem email' do
    aluno = Aluno.new
    aluno.nome = "joao"
    expect(aluno).not_to be_valid
  end
  it 'invalido com email com formato invalido' do
    aluno = Aluno.new
    aluno.nome = "joao"
    aluno.nome = "joao,!@gmail.com"
    expect(aluno).not_to be_valid
  end
end
