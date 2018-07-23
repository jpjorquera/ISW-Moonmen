class BodegaObrasController < ApplicationController
  before_action :set_bodega_obra, only: [:show, :edit, :update, :destroy]

  # GET /bodega_obras
  # GET /bodega_obras.json
  def index
    @bodega_obras = BodegaObra.all
  end

  # GET /bodega_obras/1
  # GET /bodega_obras/1.json
  def show
  end

  # GET /bodega_obras/new
  def new
    @bodega_obra = BodegaObra.new
  end

  # GET /bodega_obras/1/edit
  def edit
  end

  # POST /bodega_obras
  # POST /bodega_obras.json
  def create
    @bodega_obra = BodegaObra.new(bodega_obra_params)

    respond_to do |format|
      if @bodega_obra.save
        format.html { redirect_to @bodega_obra, notice: 'Bodega obra was successfully created.' }
        format.json { render :show, status: :created, location: @bodega_obra }
      else
        format.html { render :new }
        format.json { render json: @bodega_obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bodega_obras/1
  # PATCH/PUT /bodega_obras/1.json
  def update
    respond_to do |format|
      if @bodega_obra.update(bodega_obra_params)
        format.html { redirect_to @bodega_obra, notice: 'Bodega obra was successfully updated.' }
        format.json { render :show, status: :ok, location: @bodega_obra }
      else
        format.html { render :edit }
        format.json { render json: @bodega_obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bodega_obras/1
  # DELETE /bodega_obras/1.json
  def destroy
    @bodega_obra.destroy
    respond_to do |format|
      format.html { redirect_to bodega_obras_url, notice: 'Bodega obra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bodega_obra
      @bodega_obra = BodegaObra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bodega_obra_params
      params.fetch(:bodega_obra, {})
    end
end
