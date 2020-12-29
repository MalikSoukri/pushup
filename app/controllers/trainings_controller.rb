class TrainingsController < ApplicationController

  def show
    @trainings = Training.all
    @training = Training.find(params[:id])
  end

end
