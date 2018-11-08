class CreatePacientes < ActiveRecord::Migration[5.2]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.date :nascimento
      t.decimal :altura
      t.string :genero
      t.string :telefone
      t.text :notas

      t.timestamps
    end
  end
end
