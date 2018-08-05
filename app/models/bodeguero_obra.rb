class BodegueroObra < ApplicationRecord
  has_many :personal_obras
  belongs_to :bodega_obra
  belongs_to :bodeguero_central
  belongs_to :user, inverse_of: :bodeguero_obras
  validates_presence_of :user
end
