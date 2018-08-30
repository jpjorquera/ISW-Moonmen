class OrdenCompra < ApplicationRecord
  #include HTTParty
  belongs_to :proveedor, dependent: :destroy
  belongs_to :encargado_compra, dependent: :destroy
  has_many :registro_materials, :dependent => :destroy
  accepts_nested_attributes_for :registro_materials, :reject_if => lambda {|a| a[:nombre_item].blank?}, :allow_destroy => true
end
