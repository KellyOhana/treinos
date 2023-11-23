class TreinoPronto < ApplicationRecord

  has_many :exercicios, dependent: :destroy
  validates :nome, presence: true

end
