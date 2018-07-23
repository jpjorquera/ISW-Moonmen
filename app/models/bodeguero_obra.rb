class BodegueroObra < ApplicationRecord
  has_many :personal_obras
  has_one :bodega_obra
  belongs_to :bodeguero_central
  belongs_to :user
end
