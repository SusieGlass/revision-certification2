class BookingsController < ApplicationController
  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    @booking.car = @car
    @booking.user = current_user

    if @booking.save!
      redirect_to car_path(@car)
      flash[:alert] = "Tu as bien réservé!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to root_path, status: :see_other
    flash[:alert] = "Tu as bien supprimé ta réservation"
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date)
  end
end
