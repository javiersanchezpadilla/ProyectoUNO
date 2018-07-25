class Student < ApplicationRecord
    # validaciones para modelo Student, se validan los tres campos, 
    # esto pasa al controldor
    validates :control, presence: true
    validates :nombre, length: { minimum: 2 }
   # validates :plan_id, presence: true

   # Asociaciones
   has_many :subjects
   has_many :professors, through: :subjects
end
