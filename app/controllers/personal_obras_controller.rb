class PersonalObrasController < ApplicationController
  before_action :set_personal_obra, only: [:show, :edit, :update, :destroy]

  # GET /personal_obras
  # GET /personal_obras.json
  def index
    @personal_obras = PersonalObra.all
  end

  # GET /personal_obras/1
  # GET /personal_obras/1.json
  def show
  end

  # GET /personal_obras/new
  def new
    @personal_obra = PersonalObra.new
  end

  # GET /personal_obras/1/edit
  def edit
  end

  # POST /personal_obras
  # POST /personal_obras.json
  def create
    @personal_obra = PersonalObra.new(personal_obra_params)

    respond_to do |format|
      if @personal_obra.save
        format.html { redirect_to @personal_obra, notice: 'Personal obra was successfully created.' }
        format.json { render :show, status: :created, location: @personal_obra }
      else
        format.html { render :new }
        format.json { render json: @personal_obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_obras/1
  # PATCH/PUT /personal_obras/1.json
  def update
    respond_to do |format|
      if @personal_obra.update(personal_obra_params)
        format.html { redirect_to @personal_obra, notice: 'Personal obra was successfully updated.' }
        format.json { render :show, status: :ok, location: @personal_obra }
      else
        format.html { render :edit }
        format.json { render json: @personal_obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_obras/1
  # DELETE /personal_obras/1.json
  def destroy
    @personal_obra.destroy
    respond_to do |format|
      format.html { redirect_to personal_obras_url, notice: 'Personal obra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_obra
      @personal_obra = PersonalObra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_obra_params
      params.fetch(:personal_obra, {})
    end
end
