class AbastecimientoCentralsController < ApplicationController
  before_action :set_abastecimiento_central, only: [:show, :edit, :update, :destroy]

  # GET /abastecimiento_centrals
  # GET /abastecimiento_centrals.json
  def index
    @abastecimiento_centrals = AbastecimientoCentral.all
  end

  # GET /abastecimiento_centrals/1
  # GET /abastecimiento_centrals/1.json
  def show
  end

  # GET /abastecimiento_centrals/new
  def new
    @abastecimiento_central = AbastecimientoCentral.new
  end

  # GET /abastecimiento_centrals/1/edit
  def edit
  end

  # POST /abastecimiento_centrals
  # POST /abastecimiento_centrals.json
  def create
    @abastecimiento_central = AbastecimientoCentral.new(abastecimiento_central_params)

    respond_to do |format|
      if @abastecimiento_central.save
        format.html { redirect_to @abastecimiento_central, notice: 'Abastecimiento central was successfully created.' }
        format.json { render :show, status: :created, location: @abastecimiento_central }
      else
        format.html { render :new }
        format.json { render json: @abastecimiento_central.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abastecimiento_centrals/1
  # PATCH/PUT /abastecimiento_centrals/1.json
  def update
    respond_to do |format|
      if @abastecimiento_central.update(abastecimiento_central_params)
        format.html { redirect_to @abastecimiento_central, notice: 'Abastecimiento central was successfully updated.' }
        format.json { render :show, status: :ok, location: @abastecimiento_central }
      else
        format.html { render :edit }
        format.json { render json: @abastecimiento_central.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abastecimiento_centrals/1
  # DELETE /abastecimiento_centrals/1.json
  def destroy
    @abastecimiento_central.destroy
    respond_to do |format|
      format.html { redirect_to abastecimiento_centrals_url, notice: 'Abastecimiento central was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abastecimiento_central
      @abastecimiento_central = AbastecimientoCentral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def abastecimiento_central_params
      params.fetch(:abastecimiento_central, {})
    end
end
