class AddEmailNivelatividadeToPaciente < ActiveRecord::Migration[5.2]
  def change
    add_column :pacientes, :email, :string
    add_column :pacientes, :nivelatividade, :integer
  end
end
