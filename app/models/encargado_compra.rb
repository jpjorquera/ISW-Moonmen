class EncargadoCompra < ApplicationRecord
  belongs_to :user
  has_one :bodeguero_central
  has_many :proveedors
  has_many :orden_compras
end
