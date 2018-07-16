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
    @datosestudiante = Student.find params[:id]
  end

  def update
    @datosestudiante = Student.find params[:id]
    @datosestudiante.update(parametros_estudiante)
    # Redirije a la vista student show
    # redirect_to student_path(@datosestudiante) 
    # Redirije a la vista student index
    redirect_to students_path
  end

  def show
    # binding.pry
    @datosestudiante = Student.find params[:id]
  end

  def destroy
    @datosestudiante = Student.find params[:id]
    @datosestudiante.destroy
    redirect_to students_path
  end

  private
  def parametros_estudiante
    params.require(:student).permit(:control, :nombre, :clave_carrera)
  end

end
