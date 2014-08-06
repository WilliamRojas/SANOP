class IncapacidadsController < ApplicationController
  before_action :set_incapacidad, only: [:show, :edit, :update, :destroy]

  # GET /incapacidads
  # GET /incapacidads.json
  def index
    @incapacidads = Incapacidad.all
  end

  # GET /incapacidads/1
  # GET /incapacidads/1.json
  def show
  end

  # GET /incapacidads/new
  def new
    @incapacidad = Incapacidad.new
  end

  # GET /incapacidads/1/edit
  def edit
  end

  # POST /incapacidads
  # POST /incapacidads.json
  def create
    @incapacidad = Incapacidad.new(incapacidad_params)

    respond_to do |format|
      if @incapacidad.save
        format.html { redirect_to @incapacidad, notice: 'Incapacidad was successfully created.' }
        format.json { render :show, status: :created, location: @incapacidad }
      else
        format.html { render :new }
        format.json { render json: @incapacidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incapacidads/1
  # PATCH/PUT /incapacidads/1.json
  def update
    respond_to do |format|
      if @incapacidad.update(incapacidad_params)
        format.html { redirect_to @incapacidad, notice: 'Incapacidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @incapacidad }
      else
        format.html { render :edit }
        format.json { render json: @incapacidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incapacidads/1
  # DELETE /incapacidads/1.json
  def destroy
    @incapacidad.destroy
    respond_to do |format|
      format.html { redirect_to incapacidads_url, notice: 'Incapacidad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incapacidad
      @incapacidad = Incapacidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def incapacidad_params
      params.require(:incapacidad).permit(:funcionario_id, :fechainicio, :fechaterminacion, :totaldias, :diasacobrar, :prorroga, :numeroinpacacidad, :esp, :origendelaincapacidad)
    end
end
