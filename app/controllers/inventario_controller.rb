class InventarioController < ApplicationController
  def ver
    #current_user. id puesto

    if current_user.puesto == 2
      bodeguero = BodegueroCentral.find_by user_id: current_user.id
      n_bodega = bodeguero.bodega_central_id
      @material_bodega = InventarioCentral.joins(:material).where(bodega_central_id: n_bodega)
    else
      bodeguero = BodegueroObras.find_by user_id: current_user.id
      n_bodega = bodeguero.bodega_obra_id
      @material_bodega = InventarioObra.joins(:material).where(bodega_central_id: n_bodega)
    end
  end
end
