class Treino < ApplicationRecord

  belongs_to :user
  has_many :exercicios, dependent: :destroy
  accepts_nested_attributes_for :exercicios, allow_destroy: true, reject_if: :all_blank

  validates :nome, presence: true
end
