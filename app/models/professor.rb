class Professor < ApplicationRecord
	has_many :subjects
	has_many :students, through: :subjects
end
