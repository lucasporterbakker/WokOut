class PagesController < ApplicationController
  def home
  end


  def profile
    @user = User.find(params[:id])# find user by ID
    # '/profile/:id', to: pages#profile
    # profile_path(user)
  end

end
