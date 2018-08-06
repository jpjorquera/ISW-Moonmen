class InventarioController < ApplicationController
  def ver
    #current_user. id puesto
    @central = false
    n_bodega = 1
    if current_user.puesto == 2
      @central = true
      bodeguero = BodegueroCentral.find_by user_id: current_user.id
      n_bodega = bodeguero.bodega_central_id
      @localizacion = BodegaCentral.find(n_bodega).localizacion
      @material_bodega = InventarioCentral.joins(:material).where(bodega_central_id: n_bodega)
    else
      if current_user.puesto == 1
        bodeguero = BodegueroObra.find_by user_id: current_user.id
        n_bodega = bodeguero.bodega_obra_id
      else
        trabajador = PersonalObra.find_by user_id: current_user.id
        n_bodega = trabajador.bodeguero_obra.bodega_obra_id
      end
      @localizacion = BodegaObra.find(n_bodega).localizacion
      @material_bodega = InventarioObra.joins(:material).where(bodega_obra_id: n_bodega)
    end
  end

  def agregar
  end

  ####### Agregar casos de otros tipos de usuarios
  def add
    buscar = Material.find_by nombre: params[:nombre]
    id = 0
    if buscar.nil?
      mat = Material.new(nombre: params[:nombre])
      mat.save!
      id = Material.last.id
      if current_user.puesto == 2
        bodeguero = BodegueroCentral.find_by user_id: current_user.id
        stock = InventarioCentral.new(material_id: id, bodega_central_id: bodeguero.bodega_central_id, stock_central: params[:cantidad])
        stock.save!
      else
      end
    else
      bodeguero = BodegueroCentral.find_by user_id: current_user.id
      id = buscar.id
      stock = InventarioCentral.where(material_id: id, bodega_central_id: bodeguero.bodega_central_id).update(stock_central: params[:cantidad])
    end
    redirect_to inventario_path
    
  end
end
