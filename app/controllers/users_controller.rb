class UsersController < ApplicationController
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
    @user = User.new
    #@bodeguero_central = BodegueroCentral.new
    #@bodeguero_obra = BodegueroObra.new
    #@encargado_compra = EncargadoCompra.new
    #@personal_obra = PersonalObra.new
    #debugger
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "La cuenta fue creada exitosamente !!!"
      if (@user.puesto == 1)
        redirect_to aux_bodobra_path
      elsif (@user.puesto == 2)
        redirect_to aux_bodcentral_path
      elsif (@user.puesto == 3)
        @encargado_compra = EncargadoCompra.new(user_id: current_user.id)
        @encargado_compra.save!
        flash[:success] = "El encargado de compra fue creado exitosamente !!!"
        redirect_to operations_path
      elsif (@user.puesto == 4)
        redirect_to aux_personal_path
      else
        redirect_to operations_path
      end
    else
      render 'new'
    end
  end


  #  ['Administrador de Pagina', 0],
  #  ['Bodeguero de Obra', 1],
  #  ['Bodeguero Central', 2],
  #  ['Encargado de Compra', 3],
  #  ['Personal Obra', 4]

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :puesto)
    end
end
