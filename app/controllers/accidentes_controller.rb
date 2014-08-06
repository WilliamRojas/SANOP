class AccidentesController < ApplicationController
  before_action :set_accidente, only: [:show, :edit, :update, :destroy]

  # GET /accidentes
  # GET /accidentes.json
  def index
    @accidentes = Accidente.all
  end

  # GET /accidentes/1
  # GET /accidentes/1.json
  def show
  end

  # GET /accidentes/new
  def new
    @accidente = Accidente.new
  end

  # GET /accidentes/1/edit
  def edit
  end

  # POST /accidentes
  # POST /accidentes.json
  def create
    @accidente = Accidente.new(accidente_params)

    respond_to do |format|
      if @accidente.save
        format.html { redirect_to @accidente, notice: 'Accidente was successfully created.' }
        format.json { render :show, status: :created, location: @accidente }
      else
        format.html { render :new }
        format.json { render json: @accidente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accidentes/1
  # PATCH/PUT /accidentes/1.json
  def update
    respond_to do |format|
      if @accidente.update(accidente_params)
        format.html { redirect_to @accidente, notice: 'Accidente was successfully updated.' }
        format.json { render :show, status: :ok, location: @accidente }
      else
        format.html { render :edit }
        format.json { render json: @accidente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accidentes/1
  # DELETE /accidentes/1.json
  def destroy
    @accidente.destroy
    respond_to do |format|
      format.html { redirect_to accidentes_url, notice: 'Accidente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accidente
      @accidente = Accidente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accidente_params
      params.require(:accidente).permit(:nombre_, :del_diligenciador, :documento, :tipodoc_id, :tipo_de_vinculacion, :razon_social, :direccion_sede_principal, :direccion_reportada, :telefono_reportado, :actividad_economica_sede_principal, :codigo, :telefono_sede_principal, :fax_sede_principal, :email_sede_principal, :departamento_id, :municipio_id, :zona, :actividad_economica_ct, :direccion_ct, :telefono_ct, :fax_ct, :email_ct, :departamento_id, :municipio_id, :zona, :funcionario_id, :fecha_del_accidente, :hora_del_accidente, :dia_de_la_semana, :jornada_en_que_sucede, :realiza_su_labor, :ocupacion_no_habitual, :tiempo_laborado, :lugar_donde_ocurrio_el_at, :mecanismo_o_formato_del_at, :tipo_de_lesion, :sitio, :tipo_de_accidente, :parte_del_cuerpo_afectado, :agente_del_accidente, :departamento_id, :municipio_id, :zona_at, :mortal, :fecha_mortal, :descripcion_del_at, :hubo_personas_que_presenciaron_el_accidente, :responsable_del_informe, :tipodoc_id, :documento)
    end
end
