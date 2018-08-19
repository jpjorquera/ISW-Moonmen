class SolicitudsController < ApplicationController

  before_action :obtener_informacion_bodeguero, only: [:new, :create]

  def index
    @solicitudes = Solicitud.includes(:materials, :bodega_central, :bodega_obra)
  end
  
  def show
    
  end

  def new
    @solicitado = Solicitud.new(bodega_obra: @bodega_obra)
    @solicitado.solicitud_materials.new
    #@solicitado.solicitud_materials.new
  end

  def create
    @solicitud = Solicitud.new(params_nueva_solicitud)
    @solicitud.bodega_obra = @bodega_obra
    if @solicitud.save
      redirect_to action: :index
      flash[:notice] = "Solicitud creada"
    else
      render :new
      flash[:alert] = "No se pudo crear la solicitud"
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

end