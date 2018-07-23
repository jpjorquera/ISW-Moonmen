class AbastecimientoObrasController < ApplicationController
  before_action :set_abastecimiento_obra, only: [:show, :edit, :update, :destroy]

  # GET /abastecimiento_obras
  # GET /abastecimiento_obras.json
  def index
    @abastecimiento_obras = AbastecimientoObra.all
  end

  # GET /abastecimiento_obras/1
  # GET /abastecimiento_obras/1.json
  def show
  end

  # GET /abastecimiento_obras/new
  def new
    @abastecimiento_obra = AbastecimientoObra.new
  end

  # GET /abastecimiento_obras/1/edit
  def edit
  end

  # POST /abastecimiento_obras
  # POST /abastecimiento_obras.json
  def create
    @abastecimiento_obra = AbastecimientoObra.new(abastecimiento_obra_params)

    respond_to do |format|
      if @abastecimiento_obra.save
        format.html { redirect_to @abastecimiento_obra, notice: 'Abastecimiento obra was successfully created.' }
        format.json { render :show, status: :created, location: @abastecimiento_obra }
      else
        format.html { render :new }
        format.json { render json: @abastecimiento_obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abastecimiento_obras/1
  # PATCH/PUT /abastecimiento_obras/1.json
  def update
    respond_to do |format|
      if @abastecimiento_obra.update(abastecimiento_obra_params)
        format.html { redirect_to @abastecimiento_obra, notice: 'Abastecimiento obra was successfully updated.' }
        format.json { render :show, status: :ok, location: @abastecimiento_obra }
      else
        format.html { render :edit }
        format.json { render json: @abastecimiento_obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abastecimiento_obras/1
  # DELETE /abastecimiento_obras/1.json
  def destroy
    @abastecimiento_obra.destroy
    respond_to do |format|
      format.html { redirect_to abastecimiento_obras_url, notice: 'Abastecimiento obra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abastecimiento_obra
      @abastecimiento_obra = AbastecimientoObra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def abastecimiento_obra_params
      params.fetch(:abastecimiento_obra, {})
    end
end
