class BookingsController < ApplicationController

  def new
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @offer = Offer.find(params[:offer_id])
    @booking.offer = @booking
    if @booking.save
      redirect_to booking_my_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
