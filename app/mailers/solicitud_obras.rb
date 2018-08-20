class SolicitudObras < ApplicationMailer
  def solicitud_obras
    @solicitud = params[:solicitud]
    @user = params[:user]
      puts @user.name+"************************************************************************************************************************************************************************************************************************************************************************************************"
      mail(to: @user.email, subject: "Recepción solicitud de materiales de #{@solicitud.bodega_obra.localizacion}")
  end
end
