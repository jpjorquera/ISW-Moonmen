class SessionsController < ApplicationController
  def new
  end

  def create
  user = User.find_by(email: params[:session][:email].downcase)
  if user && user.authenticate(params[:session][:password])
    log_in user
    redirect_to operations_path
  else
    flash.now[:danger] = 'email y/o contraseña invalidas'
    render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
