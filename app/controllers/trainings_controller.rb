class TrainingsController < ApplicationController

  def show
    @training = Training.find(params[:id])
  end


  def new
    @training = Training.new
  end

  def create
    @training = Training.new(training_params)
    if @training.save
      redirect_to training_path(@training)
    else
      render :new # jumps to view "new"
    end
  end

  private
  def training_params
    params.require(:training).permit(:name, :duration, :category, :photos, :video, :cat_list, tag_list: [])
  end

end
