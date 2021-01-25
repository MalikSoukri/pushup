class TrainingsController < ApplicationController

  def show
    @training = Training.find(params[:id])
  end


end
