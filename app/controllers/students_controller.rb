class StudentsController < ApplicationController
  
  def index
    @datosestudiante = Student.all
  end

  def new
    @datosestudiante = Student.new
  end

  def create
    @datosestudiante = Student.new(parametros_estudiante)
    # esta parte es para la validacion de la informacion
    respond_to do |format|
      if @datosestudiante.save
        format.html { redirect_to students_path }
      else
        format.html { render :new } # del controlador le pasa la informacion a la vista para desplegar
        format.json { render json: @datosestudiante.errors, status: :unprocessable_entity }
      end
    end

  end

  def edit
    @datosestudiante = Student.find params[:id]
  end

  def update
    @datosestudiante = Student.find params[:id]
    # Esa parte es para validar la captura de la informacion y qu etodo este bien
    respond_to do |format|
      if @datosestudiante.update(parametros_estudiante)
        format.html { redirect_to students_path }
      else
        format.html { render :edit }
        format.json { render json: @datosestudiante.errors, status: :unprocessable_entity }
      end
    end
    # Redirije a la vista student show
    # redirect_to student_path(@datosestudiante) 
    # Redirije a la vista student index
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
    params.require(:student).permit(:control, :nombre, :plan_id)
  end

end
