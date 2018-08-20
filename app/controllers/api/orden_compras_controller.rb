class Api::OrdenComprasController < ApplicationController
  before_action :set_orden_compra

  def show
  end

  private

    def set_orden_compra
      @orden_compra = OrdenCompra.find(params[:id])
    end
end
