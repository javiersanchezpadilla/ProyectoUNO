class TeachersController < ApplicationController
      # Recordemos que el controlador le manda en todo momento la informacion a la vista

  def index
    @maestros=Teacher.all   # A esta variable se le asigno el contenido del modelo all
  end

  def new
    @nuevomaestro=Teacher.new 
  end
  def create
    @nuevomaestroporcreate=Teacher.new seguridadTeachers
    @nuevomaestroporcreate.save # Aqui guarda 
    redirect_to teachers_path   # para las rutas en todo momento usar rake routes

  end

  def edit
  end

  def show
  end
  private   # indicar cuales son los campos a los cuales yo puedo acceder a la tabla (de la bd)
    def seguridadTeachers
      params.require(:teacher).permit(:curp, :nombre, :titulo, :num_cedula)
    end

end
