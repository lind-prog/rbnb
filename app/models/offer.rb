class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :image
  validates :title, :number_of_fan, :activity, :price, :image, presence: true
end
