class BodegueroCentralsController < ApplicationController
  before_action :set_bodeguero_central, only: [:show, :edit, :update, :destroy]

  # GET /bodeguero_centrals
  # GET /bodeguero_centrals.json
  def index
    @bodeguero_centrals = BodegueroCentral.all
  end

  # GET /bodeguero_centrals/1
  # GET /bodeguero_centrals/1.json
  def show
  end

  # GET /bodeguero_centrals/new
  def new
    @bodeguero_central = BodegueroCentral.new
  end

  # GET /bodeguero_centrals/1/edit
  def edit
  end

  # POST /bodeguero_centrals
  # POST /bodeguero_centrals.json
  def create
    @bodeguero_central = BodegueroCentral.new(bodeguero_central_params)

    respond_to do |format|
      if @bodeguero_central.save
        format.html { redirect_to @bodeguero_central, notice: 'Bodeguero central was successfully created.' }
        format.json { render :show, status: :created, location: @bodeguero_central }
      else
        format.html { render :new }
        format.json { render json: @bodeguero_central.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bodeguero_centrals/1
  # PATCH/PUT /bodeguero_centrals/1.json
  def update
    respond_to do |format|
      if @bodeguero_central.update(bodeguero_central_params)
        format.html { redirect_to @bodeguero_central, notice: 'Bodeguero central was successfully updated.' }
        format.json { render :show, status: :ok, location: @bodeguero_central }
      else
        format.html { render :edit }
        format.json { render json: @bodeguero_central.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bodeguero_centrals/1
  # DELETE /bodeguero_centrals/1.json
  def destroy
    @bodeguero_central.destroy
    respond_to do |format|
      format.html { redirect_to bodeguero_centrals_url, notice: 'Bodeguero central was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bodeguero_central
      @bodeguero_central = BodegueroCentral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bodeguero_central_params
      params.fetch(:bodeguero_central, {})
    end
end
