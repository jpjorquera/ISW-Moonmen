class InventarioController < ApplicationController
  def ver
    @material_bodega = Material.joins(:inventario_centrals)
  end
end
