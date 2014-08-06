class RiesgosController < ApplicationController
  before_action :set_riesgo, only: [:show, :edit, :update, :destroy]

  # GET /riesgos
  # GET /riesgos.json
  def index
    @riesgos = Riesgo.all
  end

  # GET /riesgos/1
  # GET /riesgos/1.json
  def show
  end

  # GET /riesgos/new
  def new
    @riesgo = Riesgo.new
  end

  # GET /riesgos/1/edit
  def edit
  end

  # POST /riesgos
  # POST /riesgos.json
  def create
    @riesgo = Riesgo.new(riesgo_params)

    respond_to do |format|
      if @riesgo.save
        format.html { redirect_to @riesgo, notice: 'Riesgo was successfully created.' }
        format.json { render :show, status: :created, location: @riesgo }
      else
        format.html { render :new }
        format.json { render json: @riesgo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /riesgos/1
  # PATCH/PUT /riesgos/1.json
  def update
    respond_to do |format|
      if @riesgo.update(riesgo_params)
        format.html { redirect_to @riesgo, notice: 'Riesgo was successfully updated.' }
        format.json { render :show, status: :ok, location: @riesgo }
      else
        format.html { render :edit }
        format.json { render json: @riesgo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /riesgos/1
  # DELETE /riesgos/1.json
  def destroy
    @riesgo.destroy
    respond_to do |format|
      format.html { redirect_to riesgos_url, notice: 'Riesgo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_riesgo
      @riesgo = Riesgo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def riesgo_params
      params.require(:riesgo).permit(:empresa, :funcionario_id, :fecha, :areadeseccionopuestodetrabajo, :clasederiesgo, :factorderiesgo, :fuentegeneradora, :efectoconocido, :numerodeexpuestos, :tiempo, :controlesexitentes, :controlesrecomendados, :consecuencia, :exposicion, :factordeponderacion, :repercuciondelriesgo)
    end
end
