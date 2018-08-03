class UsersAuxController < ApplicationController
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
  def personal_obra_aux
  end

  def po_create

    @PO = PersonalObra.new(po_params)
    if @PO.save
      flash[:success] = "La cuenta fue creada exitosamente !!!"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def bodeguero_obra_aux
  end

  def bo_create

    @BO = BodegueroObra.new(bo_params)
    if @BO.save
      #if (@user.puesto == 1)
      #  @bodeguero_obra = BodegueroObra.new(@user.id)

      #end
      flash[:success] = "La cuenta fue creada exitosamente !!!"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def bodeguero_central_aux
  end

  def bc_create

    @BC = BodegueroCentral.new(bc_params)
    if @BC.save
      #if (@user.puesto == 1)
      #  @bodeguero_obra = BodegueroObra.new(@user.id)

      #end
      flash[:success] = "La cuenta fue creada exitosamente !!!"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def encargado_compra_aux
  end

  def ec_create

    @EC = EncargadoCompra.new(ec_params)
    if @EC.save
      #if (@user.puesto == 1)
      #  @bodeguero_obra = BodegueroObra.new(@user.id)

      #end
      flash[:success] = "La cuenta fue creada exitosamente !!!"
      redirect_to root_url
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

    def ec_params
      params.require(:encargado_compra).permit(:user_id)
    end

    def po_params
      params.require(:personal_obra).permit(:user_id, :bodeguero_obra_id)
    end
end
