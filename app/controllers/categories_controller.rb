class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :sweat, :flow]
  def sweat
    @categories = Category.all
    @sweat = Category.where(name: "Sweat").first
    @trainings = Training.where(category: "Sweat")
    @plans = Plan.where(category: @sweat)
  end
  
  def show
    @sweat = Category.where(name: "Sweat").first
    @trainings = Training.all
    @categorie = Category.find(params[:id])
    @plans = Plan.all
  end

  def index
    @categories = Category.all
    @sweat = Category.where(name: "Sweat").first
    @trainings = Training.all
  end

  def flow
    @categories = Category.all
    @flow = Category.where(name: "Flow").first
    @trainings = Training.where(category: "Flow")
    @plans = Plan.where(category: @flow)
  end
end
