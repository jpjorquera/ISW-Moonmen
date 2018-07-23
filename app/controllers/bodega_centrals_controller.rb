class BodegaCentralsController < ApplicationController
  before_action :set_bodega_central, only: [:show, :edit, :update, :destroy]

  # GET /bodega_centrals
  # GET /bodega_centrals.json
  def index
    @bodega_centrals = BodegaCentral.all
  end

  # GET /bodega_centrals/1
  # GET /bodega_centrals/1.json
  def show
  end

  # GET /bodega_centrals/new
  def new
    @bodega_central = BodegaCentral.new
  end

  # GET /bodega_centrals/1/edit
  def edit
  end

  # POST /bodega_centrals
  # POST /bodega_centrals.json
  def create
    @bodega_central = BodegaCentral.new(bodega_central_params)

    respond_to do |format|
      if @bodega_central.save
        format.html { redirect_to @bodega_central, notice: 'Bodega central was successfully created.' }
        format.json { render :show, status: :created, location: @bodega_central }
      else
        format.html { render :new }
        format.json { render json: @bodega_central.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bodega_centrals/1
  # PATCH/PUT /bodega_centrals/1.json
  def update
    respond_to do |format|
      if @bodega_central.update(bodega_central_params)
        format.html { redirect_to @bodega_central, notice: 'Bodega central was successfully updated.' }
        format.json { render :show, status: :ok, location: @bodega_central }
      else
        format.html { render :edit }
        format.json { render json: @bodega_central.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bodega_centrals/1
  # DELETE /bodega_centrals/1.json
  def destroy
    @bodega_central.destroy
    respond_to do |format|
      format.html { redirect_to bodega_centrals_url, notice: 'Bodega central was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bodega_central
      @bodega_central = BodegaCentral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bodega_central_params
      params.fetch(:bodega_central, {})
    end
end
