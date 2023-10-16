class Exercicio < ApplicationRecord
  belongs_to :treino
  validates :nome, presence: true
end
