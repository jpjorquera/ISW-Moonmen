class InventarioCentralsController < ApplicationController
  before_action :set_inventario_central, only: [:show, :edit, :update, :destroy]

  # GET /inventario_centrals
  # GET /inventario_centrals.json
  def index
    @inventario_centrals = InventarioCentral.all
  end

  # GET /inventario_centrals/1
  # GET /inventario_centrals/1.json
  def show
  end

  # GET /inventario_centrals/new
  def new
    @inventario_central = InventarioCentral.new
  end

  # GET /inventario_centrals/1/edit
  def edit
  end

  # POST /inventario_centrals
  # POST /inventario_centrals.json
  def create
    @inventario_central = InventarioCentral.new(inventario_central_params)

    respond_to do |format|
      if @inventario_central.save
        format.html { redirect_to @inventario_central, notice: 'Inventario central was successfully created.' }
        format.json { render :show, status: :created, location: @inventario_central }
      else
        format.html { render :new }
        format.json { render json: @inventario_central.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventario_centrals/1
  # PATCH/PUT /inventario_centrals/1.json
  def update
    respond_to do |format|
      if @inventario_central.update(inventario_central_params)
        format.html { redirect_to @inventario_central, notice: 'Inventario central was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventario_central }
      else
        format.html { render :edit }
        format.json { render json: @inventario_central.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventario_centrals/1
  # DELETE /inventario_centrals/1.json
  def destroy
    @inventario_central.destroy
    respond_to do |format|
      format.html { redirect_to inventario_centrals_url, notice: 'Inventario central was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventario_central
      @inventario_central = InventarioCentral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventario_central_params
      params.fetch(:inventario_central, {})
    end
end
