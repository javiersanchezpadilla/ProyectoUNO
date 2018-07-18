class CareersController < ApplicationController
  
  def index
    @carrera = Career.all
  end

  def new
    @carrera = Career.new
  end

  def create
    @carrera = Career.new(career_params)
    @carrera.save
    redirect_to careers_path
  end

  def edit
    @carrera = Career.find params[:id]
  end

  def update
    @carrera = Career.find params[:id]
    @carrera.update(career_params)
    redirect_to careers_path
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
