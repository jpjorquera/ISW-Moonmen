class TestmailController < ApplicationController
  def index
    NoStockMailer.with(user: current_user).stock_notification.deliver_now
    @info = "Correo de muestra enviado a "+current_user.email
  end
end
