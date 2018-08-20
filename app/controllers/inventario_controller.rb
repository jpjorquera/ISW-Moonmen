class InventarioController < ApplicationController
  def ver
    #current_user. id puesto
    @central = false
    n_bodega = 1
    # Bodeguero central
    if current_user.puesto == 2
      @central = true
      bodeguero = BodegueroCentral.find_by user_id: current_user.id
      n_bodega = bodeguero.bodega_central_id
      @localizacion = BodegaCentral.find(n_bodega).localizacion
      @material_bodega = InventarioCentral.joins(:material).where(bodega_central_id: n_bodega)
    else
      # Bodeguero obra
      if current_user.puesto == 1
        bodeguero = BodegueroObra.find_by user_id: current_user.id
        n_bodega = bodeguero.bodega_obra_id
      # Personal obra
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
        flash[:success] = "Material agregado exitosamente"
      else
        flash[:danger] = "Error al agregar el material"
      end
    else
      bodeguero = BodegueroCentral.find_by user_id: current_user.id
      id = buscar.id
      stock = InventarioCentral.where(material_id: id, bodega_central_id: bodeguero.bodega_central_id).update(stock_central: params[:cantidad])
      flash[:info] = "Material existente actualizado"
    end
    redirect_to inventario_path
    
  end

  def sacar
    @personal = PersonalObra.find_by user_id: current_user
    n_bodega = @personal.bodeguero_obra.bodega_obra_id
    #@mat = InventarioObra.joins(:material).where(bodega_obra_id: n_bodega)
    @inv = InventarioObra.joins(:material).where(bodega_obra_id: n_bodega)
    @mat = InventarioObra.new
    #@mat = @personal.bodeguero_obra.bodega_obra.inventario_obras.build
  end

  def update_sacar
    @personal = PersonalObra.find_by user_id: current_user
    n_bodega = @personal.bodeguero_obra.bodega_obra_id
    io = params[:inventario_obra]
    actual = InventarioObra.find_by(bodega_obra_id: n_bodega, material_id: io[:material_id])
    dif = actual[:stock_obra].to_i - io[:stock_obra].to_i
    if dif < 0
      flash[:danger] = "No hay suficientes materiales"
      redirect_to :action => "ver"
    elsif  dif == 0
      actual.update(stock_obra: dif)
      flash[:success] = "Material retirado correctamente"
      actual.delete
      redirect_to :action => "ver"
    else
      actual.update(stock_obra: dif)
      flash[:success] = "Material retirado correctamente"
      redirect_to :action => "ver"
    end

  end
end
