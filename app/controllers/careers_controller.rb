class CareersController < ApplicationController
  
  def index
    @carrera = Career.all
  end

  def new
    @carrera = Career.new
  end

  def create
    @carrera = Career.new(career_params)
    # Aqui se validara la informacion
    respond_to do |format|
      if @carrera.save
       format.html { redirect_to careers_path }
      else
        format.html { render :new} # le pasa el error a la vista
        format.json { render json: @carrera.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @carrera = Career.find params[:id]
  end

  def update
    @carrera = Career.find params[:id]
     # Esa parte es para validar la captura de la informacion y qu etodo este bien
    respond_to do |format|
      if @carrera.update(career_params)
        format.html { redirect_to careers_path }
      else
        format.html { render :edit }
        format.json { render json: @carrera.errors, status: :unprocessable_entity }
      end
    end
    # Redirije a la vista student show
    # redirect_to student_path(@carrera) 
    # Redirije a la vista student index
  end

  def show
    @carrera = Career.find params[:id]
  end

  def destroy
    @carrera = Career.find params[:id]
    @carrera.destroy
    redirect_to careers_path
  end

  private
  def career_params
    params.require(:career).permit(:clave_carrera, :descripcion)
  end

end
