# app/controllers/bookings_controller.rb
class BookingsController < ApplicationController
  before_action :set_offer, only: %i[new create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = @offer.bookings.build(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to my_bookings_bookings_path, notice: 'Your booking has been successfully created!'
    else
      render "offers/show", status: :unprocessable_entity
    end
  end

  def my_bookings
    @bookings = current_user.bookings.includes(:offer)
  end

  private

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end

  def booking_params
    params.require(:booking).permit(:date, :status, :additional_requests)
  end
end
