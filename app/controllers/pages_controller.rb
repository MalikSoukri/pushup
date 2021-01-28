class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :sweat, :flow, :profile]

  def home
  end
end
