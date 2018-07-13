class StudentsController < ApplicationController
  def index
    @datosestudiante = Student.all
  end

  def new
    @datosestudiante = Student.new
  end

  def create
    @datosestudiante = Student.new(parametros_estudiante)
    @datosestudiante.save
    redirect_to students_path
  end

  def edit
  end

  def show
    # binding.pry
    @datosestudiante = Student.find params[:id]
  end

  private
  def parametros_estudiante
    params.require(:student).permit(:control, :nombre, :clave_carrera)
  end

end
