class Exercicio < ApplicationRecord
  belongs_to :treino
  # has_one :codependente, class_name: "Exercicio", foreign_key: "codependencia"
  validates :nome, presence: true
end
