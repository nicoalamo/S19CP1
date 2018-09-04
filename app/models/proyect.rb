class Proyect < ApplicationRecord
  has_many :allocations
  has_many :workers, through: :allocations

end
