class OffersController < ApplicationController
  before_action :set_offer, only: %i[show]

  def show
  end

private

  def set_offer
    @offer = Offer.find(params[:id])
  end
end
