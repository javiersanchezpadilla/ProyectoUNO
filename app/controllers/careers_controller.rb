class CareersController < ApplicationController
  def index
    @careers = Career.all
  end

  def new
    @career = Career.new
    # binding.pry
  end

  def create
    @career = Career.new(career_params)
    @career.save
    redirect_to careers_path
    # binding.pry
  end

  def edit
  end

  def show
  end

  private
    def career_params
      params.require(:career).permit(:clave_carrera, :descripcion)
    end
end
