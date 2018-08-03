class UsersController < ApplicationController

#  before_action :set_puesto
#  def set_puesto
#    @puesto = 0
#  end
  def show
    @user = User.find(params[:id])
    #debugger
  end

  def new
    @user = User.new
    #debugger
  end

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
        redirect_to "/users_aux/bodeguero_obra_aux"
      elsif (@user.puesto == 2)
        redirect_to "/users_aux/bodeguero_central_aux"
      elsif (@user.puesto == 3)
        redirect_to "/users_aux/encargado_compra_aux"
      elsif (@user.puesto == 4)
        redirect_to "/users_aux/personal_obra_aux"
      else
      redirect_to signup_path
    end
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :puesto)
    end
end
