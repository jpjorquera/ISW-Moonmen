class SolicitudObras < ApplicationMailer
  def solicitud_obras
    @solicitud = params[:solicitud]
    @mats = SolicitudMaterial.includes(:material).where(solicitud_id: @solicitud.id)
    @user = params[:user]
    mail(to: @user.email, subject: "Recepción solicitud de materiales de #{@solicitud.bodega_obra.localizacion}")
  end
end
