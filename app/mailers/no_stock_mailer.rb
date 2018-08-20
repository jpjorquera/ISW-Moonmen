class NoStockMailer < ApplicationMailer
  def stock_notification
    @user = params[:user]
    @io = params[:io]
    mail(to: @user.email, subject: "Notificacion de falta de materiales bodega #{@user.bodega_obras[0].localizacion}")
  end
end
