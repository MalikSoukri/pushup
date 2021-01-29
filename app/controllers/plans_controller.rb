class PlansController < ApplicationController
  def show
    @plan = Plan.find(params[:id])
    @workouts = @plan.workout
    @trainings = Training.where(category: "Sweat")
  end


  def new
    @plan = Plan.new
    @training = Training.new
    @workouts = Workout.all
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to plan_path(@plan)
    else
      render :new # jumps to view "new"
    end
  end

  private
  def plan_params
    params.require(:plan).permit(:name, :days, :specificity, :photos, :category_id)
  end

end
