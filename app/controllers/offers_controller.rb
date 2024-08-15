class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_offer, only: %i[show]

  def index
    if params[:query].present?
      @offers = Offer.global_search(params[:query])
    else
      @offers = Offer.all
    end
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offers_path, notice: "Great! Your offer was created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # afficher la nouvelle offre dans la vue de l'index
    # retourner sur l'offre une fois le create terminé
    # insérer une image avec le tout
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :price, :image, :number_of_fan, :activity, :localisation, :description, :enthusiasm_level)
  end

  def set_offer
    @offer = Offer.find(params[:id])
  end
end
