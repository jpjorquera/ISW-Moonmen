class SolicitudsController < ApplicationController

  before_action :obtener_informacion_bodeguero, only: [:new, :create, :show, :add, :add_create, :envio_solicitud]

  def index
    if (current_user.puesto != 1) && (current_user.puesto != 2)
      redirect_to operations_path
    end
    if current_user.puesto == 1
      @solicitudes = Solicitud.includes(:materials, :bodega_central, :bodega_obra).where(bodega_obra_id: current_user.bodega_obras[0].id)
    else
      @solicitudes = Solicitud.includes(:materials, :bodega_central, :bodega_obra).where(bodega_central_id: current_user.bodega_central[0].id)
    end
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

  def enviar
    solicitud = Solicitud.includes(:materials, :bodega_central, :bodega_obra).find_by(id: params[:id])
    count = solicitud.solicitud_materials.size
    if count == 0
      redirect_to :action => "show"
      flash[:danger] = "Debe agregar materiales para enviar una solicitud"
    else
      #solicitud.update(estado: 1)
      @bodegueros = BodegueroCentral.where(bodega_central_id: solicitud.bodega_central.id)
      @bodegueros.each do |bod|
        SolicitudObras.with(solicitud: solicitud, user: bod.user).solicitud_obras.deliver_later
      end
      redirect_to :action => "index"
      flash[:success] = "Su solicitud fue enviada correctamente, se notificará a la bodega correspondiente"
    end
  end

  def responder
    @flag = true
    @solicitud = Solicitud.find(params[:id])
    @n_sol = 0
    @n_inv = 0
    @dif = 0
  end

  def envio_solicitud
    solicitud = params[:id]
    flag = params[:estado]
    materiales = params[:materiales]
    puts @materiales
    puts @flag
    #render :json => { "asd" => "asd"}
    if flag=="false"
      #flash[:danger] = "No hay suficientes materiales para cumplir la solicitud"
      payload = {
        error: "No hay suficientes materiales para cumplir la solicitud",
        status: 400
      }
      render :json =>  payload , :status => :bad_request
    else
      #flash.now[:success] = "Materiales enviados correctamente"
      sol = Solicitud.find(solicitud)
      sol.update(estado: 1)
      puts materiales
      materiales.each do |mat|
        id_actual = mat[:id].to_i
        stock = InventarioCentral.find_by(bodega_central_id: @bodega_central.id, material_id: id_actual)
        dif =  stock.stock_central - mat[:cantidad].to_i
        stock.update(stock_central: dif)
      end
      receptor = sol.bodega_obra.bodeguero_obra
      SolicitudEnCaminoMailer.with(solicitud: sol).en_camino.deliver_later
      payload = {
        message: "Materiales enviados correctamente, actualizados en bodega",
        status: 200
      }
      render :json => payload, :status => :ok
    end
  end

  def update
  
  end

  def destroy

  end

  def obtener_informacion_bodeguero
    if current_user.puesto == 1
      bodeguero = BodegueroObra.find_by user_id: current_user.id
      n_bodega = bodeguero.bodega_obra_id
      @bodega_obra = BodegaObra.find(n_bodega)
    else
      bodeguero = BodegueroCentral.find_by user_id: current_user.id
      n_bodega = bodeguero.bodega_central_id
      @bodega_central = BodegaCentral.find(n_bodega)
    @material = Material.all
    end
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