class InventarioController < ApplicationController
  def ver
    @material_bodega = InventarioCentral.joins(:material)
  end
end
