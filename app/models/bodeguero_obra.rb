class BodegueroObra < ApplicationRecord
  has_many :personal_obras
  belongs_to :bodega_obra
  belongs_to :bodeguero_central
  belongs_to :user
end
