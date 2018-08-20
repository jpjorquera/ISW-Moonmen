class OrdenCompra < ApplicationRecord
  belongs_to :proveedor
  belongs_to :encargado_compra
  has_many :registro_materials, :dependent => :destroy
  accepts_nested_attributes_for :registro_materials, :reject_if => lambda {|a| a[:nombre_item].blank?}, :allow_destroy => true
end
