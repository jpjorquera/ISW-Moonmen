class SolicitudsController < ApplicationController

  before_action :obtener_informacion_bodeguero, only: [:new, :create, :show, :add, :add_create]

  def index
    @solicitudes = Solicitud.includes(:materials, :bodega_central, :bodega_obra)
  end
  
  def show
    @solicitud = Solicitud.find(params[:id])
    @sol = SolicitudMaterial.includes(:material).where(solicitud_id: params[:id])
    
  end

  def add
    @solicitud = Solicitud.find(params[:id])
    @material = Material.all
    @mat = @solicitud.solicitud_materials.build
  end

  def add_create
    par_sol = params[:solicitud_material]
    mat = par_sol[:material_id]
    cant = par_sol[:cantidad]
    sol = params[:id]
    #puts mat, cant, sol
    #@material = SolicitudMaterial.new()#params_new_mats)#solicitud_id: sol, material_id: mat, cantidad: cant)
    m = SolicitudMaterial.find_by(material_id: mat, solicitud_id: sol)
    if (m.nil?)
      @material = SolicitudMaterial.new(material_id: mat, cantidad: cant, solicitud_id: sol)
      if @material.save
        #render :show
        flash[:success] = "Material agregado correctamente"
        redirect_to :action => "show"
      else
        redirect_to :action => "show"
        flash[:danger] = "No se pudo guardar el material"
      end
    else
      sum = m.cantidad+cant.to_i
      m.update(cantidad: sum)
      flash[:success] = "Material actualizado correctamente"
      redirect_to :action => "show"
    end
  end

  def new
    @solicitado = Solicitud.new(bodega_obra: @bodega_obra)
    #@sol = 3.times { @solicitado.solicitud_materials.build }
    #@solicitado.solicitud_materials.new
  end

  def create
    @solicitud = Solicitud.new(params_nueva_solicitud)
    @solicitud.bodega_obra = @bodega_obra
    if @solicitud.save
      #redirect_to action: :index
      redirect_to @solicitud
      flash[:success] = "Solicitud creada"
    else
      render :new
      flash[:danger] = "No se pudo crear la solicitud"
    end
  end

  def update
  
  end

  def destroy

  end

  def obtener_informacion_bodeguero
    bodeguero = BodegueroObra.find_by user_id: current_user.id
    n_bodega = bodeguero.bodega_obra_id
    @bodega_obra = BodegaObra.find(n_bodega)
    @material = Material.all
  end

  def params_nueva_solicitud
    params.
      require(:solicitud).
      permit(:bodega_central_id, solicitud_materials_attributes: [:material_id, :cantidad])
  end

  'def params_new_mats
    params.
      require(:solicitud_material).
      permit(:material_id, :cantidad)
  end'

end