class AddWhatsappToPaciente < ActiveRecord::Migration[5.2]
  def change
    add_column :pacientes, :whatsapp, :string
  end
end
