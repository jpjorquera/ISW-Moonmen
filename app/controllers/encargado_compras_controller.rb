class EncargadoComprasController < ApplicationController
  before_action :set_encargado_compra, only: [:show, :edit, :update, :destroy]

  # GET /encargado_compras
  # GET /encargado_compras.json
  def index
    @encargado_compras = EncargadoCompra.all
  end

  # GET /encargado_compras/1
  # GET /encargado_compras/1.json
  def show
  end

  # GET /encargado_compras/new
  def new
    @encargado_compra = EncargadoCompra.new
  end

  # GET /encargado_compras/1/edit
  def edit
  end

  # POST /encargado_compras
  # POST /encargado_compras.json
  def create
    @encargado_compra = EncargadoCompra.new(encargado_compra_params)

    respond_to do |format|
      if @encargado_compra.save
        format.html { redirect_to @encargado_compra, notice: 'Encargado compra was successfully created.' }
        format.json { render :show, status: :created, location: @encargado_compra }
      else
        format.html { render :new }
        format.json { render json: @encargado_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encargado_compras/1
  # PATCH/PUT /encargado_compras/1.json
  def update
    respond_to do |format|
      if @encargado_compra.update(encargado_compra_params)
        format.html { redirect_to @encargado_compra, notice: 'Encargado compra was successfully updated.' }
        format.json { render :show, status: :ok, location: @encargado_compra }
      else
        format.html { render :edit }
        format.json { render json: @encargado_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encargado_compras/1
  # DELETE /encargado_compras/1.json
  def destroy
    @encargado_compra.destroy
    respond_to do |format|
      format.html { redirect_to encargado_compras_url, notice: 'Encargado compra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encargado_compra
      @encargado_compra = EncargadoCompra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def encargado_compra_params
      params.fetch(:encargado_compra, {})
    end
end
