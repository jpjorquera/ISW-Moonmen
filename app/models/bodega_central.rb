class BodegaCentral < ApplicationRecord
  has_many :bodeguero_obras
  has_one :bodeguero_central
end
