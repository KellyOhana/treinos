class Exercicio < ApplicationRecord
  before_destroy :destroy_codependencias

  belongs_to :treino, optional: true
  belongs_to :treino_pronto, optional: true
  has_many :codependencias, class_name: 'Exercicio', foreign_key: 'codependencia', dependent: :destroy
  belongs_to :exercicio, optional: true
  validates :nome, presence: true

  private

  def destroy_codependencias
    codependencias.each do |codependente|
      codependente.update(codependencia: nil)
      codependente.destroy
    end
  end
end
