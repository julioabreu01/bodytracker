class CreateMedidas < ActiveRecord::Migration[5.2]
  def change
    create_table :medidas do |t|
      t.datetime :datahora
      t.decimal :peso
      t.decimal :bmi
      t.integer :dci
      t.integer :bmr
      t.integer :idademetabolica
      t.decimal :txliquido
      t.integer :gordvisceral
      t.integer :massaossea
      t.decimal :txgordtotal
      t.decimal :txgordbraesq
      t.decimal :txgordbradir
      t.decimal :txgordperesq
      t.decimal :txgordperdir
      t.decimal :txgordtronco
      t.decimal :massamusctotal
      t.decimal :massamuscbraesq
      t.decimal :massamuscbradir
      t.decimal :massamuscperesq
      t.decimal :massamuscperdir
      t.decimal :massamusctronco
      t.references :paciente, foreign_key: true

      t.timestamps
    end
  end
end
