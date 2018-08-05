class UsersController < ApplicationController

#  before_action :set_puesto
#  def set_puesto
#    @puesto = 0
#  end

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
    @user = User.find(params[:id])
    #debugger
  end

  def new
    #@challenge = Challenge.new(challenge_params.merge({user_id: current_user.id}))
    @user = User.new
    @user.encargado_compras.build
    @user.bodeguero_centrals.build
    @user.bodeguero_obras.build
    @user.personal_obras.build
    #debugger
  end

#  def po_create
#
  #  @PO = PersonalObra.new(po_params)
  #  if @PO.save
  #    redirect_to root_url
  #  else
  #    render 'new'
  #  end
  #end

#  ['Administrador de Pagina', 0],
#  ['Bodeguero de Obra', 1],
#  ['Bodeguero Central', 2],
#  ['Encargado de Compra', 3],
#  ['Personal Obra', 4]

  def create

    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "La cuenta fue creada exitosamente !!!"
      if (@user.puesto == 1)
        flash[:success] = "bodeguero obra"
        #bo = BodegueroObra.create!(user_id : current_user.id, :encargado)
        #@user.bodeguero_obras.save
      elsif (@user.puesto == 2)
        flash[:success] = "bodeguero central"
        #bc = BodegueroCentral.create!(user_id: current_user.id, :bodega_central_id, :encargado_compra_id)
        #@user.bodeguero_centrals.save
      elsif (@user.puesto == 3)
        flash[:success] = "Encargado de Compra"
        #ec =
        #@user.encargado_compras.save
      elsif (@user.puesto == 4)
        flash[:success] = "Personal Obra"
        #po =
        #@user.personal_obras.save
      else

      end
      redirect_to signup_path
    else
      render 'new'
    end
  end

#  @user.encargado_compras.build
#  @user.bodeguero_centrals.build
#  @user.bodeguero_obras.build
#  @user.personal_obras.build

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :puesto,
         bodeguero_central_attributes: [:bodega_central_id, :encargado_compra_id],
         bodeguero_obra_attributes: [:bodeguero_central_id, :bodega_obra_id],
         personal_obra_attributes: [:bodeguero_obra_id],
         encargado_compra_attributes: [])
    end

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
