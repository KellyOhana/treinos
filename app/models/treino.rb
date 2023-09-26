class Treino < ApplicationRecord

  belongs_to :user
  has_many :exercicios
  accepts_nested_attributes_for :exercicios, allow_destroy: true, reject_if: :all_blank
end
