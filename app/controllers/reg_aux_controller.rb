class RegAuxController < ApplicationController
  before_action :BaO_all,:BaC_all,:BoO_all,:BoC_all,:EC_all

  def BaO_all
    @BaO_data = BodegaObra.all.ids
  end

  def BaC_all
    @BaC_data = BodegaCentral.all.ids
  end

  def BoO_all
    @BoO_data = BodegueroObra.all.ids
  end

  def BoC_all
    @BoC_data = BodegueroCentral.all.ids
  end

  def EC_all
    @EC_data = EncargadoCompra.all.ids
  end

  def show
    #@user = User.find(params[:id])
    #debugger
  end

  def new
    #@user = User.new
    @bodeguero_central = BodegueroCentral.new
    @bodeguero_obra = BodegueroObra.new
    #@encargado_compra = EncargadoCompra.new
    @personal_obra = PersonalObra.new
    #debugger
  end


  def bo_create
    @bodeguero_obra = BodegueroObra.new(bo_params)
    if @bodeguero_obra.save
      flash[:success] = "El bodeguero de obra fue creado exitosamente !!!"
      redirect_to operations_path
    else
      render 'new'
    end
  end

  def bc_create
    @bodeguero_central = BodegueroCentral.new(bc_params)
    if @bodeguero_central.save
      flash[:success] = "El bodeguero central fue creado exitosamente !!!"
      redirect_to operations_path
    else
      render 'new'
    end
  end

  def po_create
    @personal_obra = PersonalObra.new(po_params)
    if @personal_obra.save
        flash[:success] = "El personal de obra fue creado exitosamente !!!"
        redirect_to operations_path
    else
      render 'new'
    end
  end


  private

  def bc_params
    params.require(:bodeguero_central).permit(:user_id, :bodega_central_id, :encargado_compra_id)
  end

  def bo_params
    params.require(:bodeguero_obra).permit(:user_id, :bodega_obra_id, :bodeguero_central_id)
  end

  #def ec_params
  #  params.require(:encargado_compra).permit(:user_id)
  #end

  def po_params
    params.require(:personal_obra).permit(:user_id, :bodeguero_obra_id)
  end
end
