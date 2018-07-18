class Career < ApplicationRecord
    has_many :plans, dependent: :destroy
end
