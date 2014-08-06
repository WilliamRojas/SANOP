class EnfermedadsController < ApplicationController
  before_action :set_enfermedad, only: [:show, :edit, :update, :destroy]

  # GET /enfermedads
  # GET /enfermedads.json
  def index
    @enfermedads = Enfermedad.all
  end

  # GET /enfermedads/1
  # GET /enfermedads/1.json
  def show
  end

  # GET /enfermedads/new
  def new
    @enfermedad = Enfermedad.new
  end

  # GET /enfermedads/1/edit
  def edit
  end

  # POST /enfermedads
  # POST /enfermedads.json
  def create
    @enfermedad = Enfermedad.new(enfermedad_params)

    respond_to do |format|
      if @enfermedad.save
        format.html { redirect_to @enfermedad, notice: 'Enfermedad was successfully created.' }
        format.json { render :show, status: :created, location: @enfermedad }
      else
        format.html { render :new }
        format.json { render json: @enfermedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enfermedads/1
  # PATCH/PUT /enfermedads/1.json
  def update
    respond_to do |format|
      if @enfermedad.update(enfermedad_params)
        format.html { redirect_to @enfermedad, notice: 'Enfermedad was successfully updated.' }
        format.json { render :show, status: :ok, location: @enfermedad }
      else
        format.html { render :edit }
        format.json { render json: @enfermedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enfermedads/1
  # DELETE /enfermedads/1.json
  def destroy
    @enfermedad.destroy
    respond_to do |format|
      format.html { redirect_to enfermedads_url, notice: 'Enfermedad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enfermedad
      @enfermedad = Enfermedad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enfermedad_params
      params.require(:enfermedad).permit(:funcionario_id, :descripcion, :fecha, :codigodediagnostico )
    end
end
