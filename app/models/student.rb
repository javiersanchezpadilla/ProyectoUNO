class Student < ApplicationRecord
    # validaciones para modelo Student
    validates :control, presence: true
    validates :nombre, length: { minimum: 2 }
    validates :clave_carrera, presence: true
end
