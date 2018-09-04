class Worker < ApplicationRecord
  has_many :allocations
  has_many :proyects, through: :allocations
end
