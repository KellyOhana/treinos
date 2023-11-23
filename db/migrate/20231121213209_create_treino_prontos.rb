class CreateTreinoProntos < ActiveRecord::Migration[7.0]
  def change
    create_table :treino_prontos do |t|

      t.string :nome,              null: false
      t.timestamps
    end
  end
end
