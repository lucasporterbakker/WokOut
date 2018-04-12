class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @meal = Meal.find(params[:meal_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @meal = Meal.find(params[:meal_id])
    @booking.user_id = current_user.id
    @booking.meal_id = @meal.id
    authorize @booking
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @meal = @booking.meal
    # @booking.user_id = current_user.id
    # @booking.meal_id = @meal.id
    authorize @booking
    @booking.destroy
    redirect_to profile_path(current_user)
  end

  private
  def booking_params
    params.require(:booking).permit(:date, :meal_id, :user_id)
  end
end
