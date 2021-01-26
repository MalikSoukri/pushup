class ProfilesController < ApplicationController
  def show
    @user = current_user
    @profile = @user.profile
  end

  def edit
    @user = current_user
    @profile = @user.profile
  end

  def update
    @user = current_user
    @profile = @user.profile
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  private
  def profile_params
    params.require(:profile).permit(:name, :age, :description, :photo)
  end

end
