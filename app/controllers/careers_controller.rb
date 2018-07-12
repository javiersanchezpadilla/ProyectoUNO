class CareersController < ApplicationController
  def index
    @careers = Career.all
  end

  def new
    @career = Career.new
  end

  def edit
  end

  def show
  end
end
