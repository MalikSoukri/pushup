class PlansController < ApplicationController
  def show
    @plan = Plan.find(params[:id])
    @trainings = Training.where(category: "Sweat")
  end
end
