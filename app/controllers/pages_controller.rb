class PagesController < ApplicationController

  skip_before_action :authenticate_user!

  def home
    @meals = Meal.all
  end

  def search
    if params[:query].present?
      sql_query = "meals.category ILIKE :query OR meals.name ILIKE :query OR meals.description ILIKE :query OR users.first_name ILIKE :query OR users.last_name ILIKE :query"
      @meals = Meal.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @meals = Meal.all
    end
      @query = params[:query]
  end

  def dashboard
    @user = User.find(params[:id])# find user by ID
    # '/profile/:id', to: pages#profile
    # profile_path(user)
  end

  def profile
    @user = User.find(params[:id])# find user by ID
    # '/profile/:id', to: pages#profile
    # profile_path(user)
  end

end
