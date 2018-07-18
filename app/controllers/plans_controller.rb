class PlansController < ApplicationController
  def index
    @planestudio = Plan.all
  end

def new
  @planestudio = Plan.new
end

def create
  @planestudio = Plan.new(plan_params)
  @planestudio.save
  # Una vez creado, lo regresamos al index
  redirect_to plans_path
end

def edit
  @planestudio = Plan.find params[:id]
end

def update
  @planestudio = Plan.find params[:id]
  @planestudio.update(plan_params)
  redirect_to plans_path
end

def show
  @planestudio = Plan.find params[:id]
end

private
  def plan_params
    params.require(:plan).permit(:clave_plan_estudio, :career_id)
  end
end