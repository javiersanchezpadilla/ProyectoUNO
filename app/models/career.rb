class Career < ApplicationRecord
   
    # Validaciones de los campos
    validates :clave_carrera, presence: true
    validates :descripcion, presence: true
    has_many :plans, dependent: :destroy
end
