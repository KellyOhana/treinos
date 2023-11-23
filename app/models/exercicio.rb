class Exercicio < ApplicationRecord
  belongs_to :treino, optional: true
  belongs_to :treino_pronto, optional: true
  validates :nome, presence: true
end
