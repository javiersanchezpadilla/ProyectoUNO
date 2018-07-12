class CareersController < ApplicationController
  def index
    @careers = Career.all
  end

  def new
  end

  def edit
  end

  def show
  end
end
