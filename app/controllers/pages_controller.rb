class PagesController < ApplicationController

  skip_before_action :authenticate_user!

  def home
    @meals = Meal.all
    @users = User.all
  end


  def profile
    @user = User.find(params[:id])# find user by ID
    # '/profile/:id', to: pages#profile
    # profile_path(user)
  end

end
