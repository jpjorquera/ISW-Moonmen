class InventarioObrasController < ApplicationController
  before_action :set_inventario_obra, only: [:show, :edit, :update, :destroy]

  # GET /inventario_obras
  # GET /inventario_obras.json
  def index
    @inventario_obras = InventarioObra.all
  end

  # GET /inventario_obras/1
  # GET /inventario_obras/1.json
  def show
  end

  # GET /inventario_obras/new
  def new
    @inventario_obra = InventarioObra.new
  end

  # GET /inventario_obras/1/edit
  def edit
  end

  # POST /inventario_obras
  # POST /inventario_obras.json
  def create
    @inventario_obra = InventarioObra.new(inventario_obra_params)

    respond_to do |format|
      if @inventario_obra.save
        format.html { redirect_to @inventario_obra, notice: 'Inventario obra was successfully created.' }
        format.json { render :show, status: :created, location: @inventario_obra }
      else
        format.html { render :new }
        format.json { render json: @inventario_obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventario_obras/1
  # PATCH/PUT /inventario_obras/1.json
  def update
    respond_to do |format|
      if @inventario_obra.update(inventario_obra_params)
        format.html { redirect_to @inventario_obra, notice: 'Inventario obra was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventario_obra }
      else
        format.html { render :edit }
        format.json { render json: @inventario_obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventario_obras/1
  # DELETE /inventario_obras/1.json
  def destroy
    @inventario_obra.destroy
    respond_to do |format|
      format.html { redirect_to inventario_obras_url, notice: 'Inventario obra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventario_obra
      @inventario_obra = InventarioObra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventario_obra_params
      params.fetch(:inventario_obra, {})
    end
end
