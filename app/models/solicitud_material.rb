class SolicitudMaterial < ApplicationRecord
  belongs_to :solicitud
  belongs_to :material
end