class OffersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :set_offer, only: [:show]

  def index
    @offers = Offer.all
  end

  def show
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = current_user.offers.build(offer_params)
    if @offer.save
      redirect_to @offer, notice: 'Offer created successfully!'
    else
      render :new
    end
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to offers_path, alert: 'Offer not found.'
  end

  def offer_params
    params.require(:offer).permit(:title, :description, :price)
  end
end
