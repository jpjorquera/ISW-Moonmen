class SolicitudEnCaminoMailer < ApplicationMailer
  def en_camino
    @solicitud = params[:solicitud]
    @user = @solicitud.bodega_obra.bodeguero_obra.user
    mail(to: @user.email, subject: "Orden #{@solicitud.id} se encuentra en camino")
  end
end
