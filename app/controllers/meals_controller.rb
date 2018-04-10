class MealsController < ApplicationController
  def show
    @meal = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new
    @meal.user = current_user
    authorize @meal
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.user = current_user
    authorize @meal
    if @meal.save
      redirect_to meal_path(@meal)
    else
      render :new
    end
  end

  def edit
    @meal = Meal.find(params[:id])
    authorize @meal
  end

  def update
    @meal = Meal.find(params[:id])
    authorize @meal
    if @meal.update
      redirect_to meal_path(@meal)
    else
      render :new
    end
  end

  def destroy
    @meal = Meal.find(params[:id])
    authorize @meal
    @meal.destroy
    redirect_to root
  end

  private
  def meal_params
    params.require(:meal).permit(:name, :description, :category, :price)
  end
end
