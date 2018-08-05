class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    #debugger
  end

  def new
    @user = User.new
    #debugger
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "La cuenta fue creada exitosamente !!!"
      bodeguero = BodegueroCentral.new(user_id: current_user.id, bodega_central_id: 1, encargado_compra_id: 1)
      bodeguero.save!
      redirect_to signup_path
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :puesto)
    end
end
