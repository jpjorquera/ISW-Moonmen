class BodegueroCentral < ApplicationRecord
  has_many :bodeguero_obras
  belongs_to :user
end
