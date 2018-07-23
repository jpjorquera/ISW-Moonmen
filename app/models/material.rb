class Material < ApplicationRecord
  has_many :inventario_obras
  has_many :inventario_centrals
end
