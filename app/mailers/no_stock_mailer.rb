class NoStockMailer < ApplicationMailer
  def stock_notification
    @user = params[:user]
    mail(to: @user.email, subject: 'Notificacion de falta de materiales')
  end
end
