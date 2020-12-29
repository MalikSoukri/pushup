class PlansController < ApplicationController
  def show
    @plans = Training.all
    @plan = Training.find(params[:id])
  end
end
