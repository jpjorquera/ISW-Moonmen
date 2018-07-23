class BodegueroObrasController < ApplicationController
  before_action :set_bodeguero_obra, only: [:show, :edit, :update, :destroy]

  # GET /bodeguero_obras
  # GET /bodeguero_obras.json
  def index
    @bodeguero_obras = BodegueroObra.all
  end

  # GET /bodeguero_obras/1
  # GET /bodeguero_obras/1.json
  def show
  end

  # GET /bodeguero_obras/new
  def new
    @bodeguero_obra = BodegueroObra.new
  end

  # GET /bodeguero_obras/1/edit
  def edit
  end

  # POST /bodeguero_obras
  # POST /bodeguero_obras.json
  def create
    @bodeguero_obra = BodegueroObra.new(bodeguero_obra_params)

    respond_to do |format|
      if @bodeguero_obra.save
        format.html { redirect_to @bodeguero_obra, notice: 'Bodeguero obra was successfully created.' }
        format.json { render :show, status: :created, location: @bodeguero_obra }
      else
        format.html { render :new }
        format.json { render json: @bodeguero_obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bodeguero_obras/1
  # PATCH/PUT /bodeguero_obras/1.json
  def update
    respond_to do |format|
      if @bodeguero_obra.update(bodeguero_obra_params)
        format.html { redirect_to @bodeguero_obra, notice: 'Bodeguero obra was successfully updated.' }
        format.json { render :show, status: :ok, location: @bodeguero_obra }
      else
        format.html { render :edit }
        format.json { render json: @bodeguero_obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bodeguero_obras/1
  # DELETE /bodeguero_obras/1.json
  def destroy
    @bodeguero_obra.destroy
    respond_to do |format|
      format.html { redirect_to bodeguero_obras_url, notice: 'Bodeguero obra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bodeguero_obra
      @bodeguero_obra = BodegueroObra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bodeguero_obra_params
      params.fetch(:bodeguero_obra, {})
    end
end
