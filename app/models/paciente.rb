class Paciente < ApplicationRecord
    has_many :medidas, dependent: :destroy
    validates :nome, presence: true,
    length: { minimum: 3 }

end
