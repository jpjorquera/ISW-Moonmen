class EncargadoCompra < ApplicationRecord
  belongs_to :user, inverse_of: :encargado_compras
  validates_presence_of :user
  has_one :bodeguero_central
  has_many :proveedors
  has_many :orden_compras
end
