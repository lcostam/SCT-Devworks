class CreateTarefas < ActiveRecord::Migration[6.0]
  def change
    create_table :tarefas do |t|
      t.text :descricao
      t.string :status
      t.datetime :prazo
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
