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
    @offers_bookings = current_user.offers_bookings
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.update(accepted: true)
    redirect_to my_bookings_bookings_path
  end

  def refuse
    @booking = Booking.find(params[:id])
    @booking.update(accepted: false)
    redirect_to my_bookings_bookings_path
  end

  private

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end

  def booking_params
    params.require(:booking).permit(:date, :status, :additional_requests)
  end
end
