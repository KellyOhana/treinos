class Treino < ApplicationRecord
  has_many :exercicio
  has_one :user
end