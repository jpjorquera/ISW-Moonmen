class MaterialesController < ApplicationController
  def index
    id = current_user.id
    n_bodega = 1
    @central = false
    if current_user.puesto == 2
      @central = true
      bodeguero = BodegueroCentral.find_by user_id: id
      n_bodega = bodeguero.bodega_central_id
      @localizacion = BodegaCentral.find(n_bodega).localizacion
      @material = InventarioCentral.joins(:material).where(bodega_central_id: n_bodega)
    else
      if current_user.puesto == 1
        bodeguero = BodegueroObra.find_by user_id: current_user.id
        n_bodega = bodeguero.bodega_obra_id
      else
        trabajador = PersonalObra.find_by user_id: current_user.id
        n_bodega = trabajador.bodeguero_obra.bodega_obra_id
      end
      @localizacion = BodegaObra.find(n_bodega).localizacion
      @material = InventarioObra.joins(:material).where(bodega_obra_id: n_bodega)
    end
  end
  def agregar
  end

  def peticion
  end
end
