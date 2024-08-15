class Offer < ApplicationRecord
  include PgSearch::Model

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :image
  validates :title, :number_of_fan, :activity, :price, presence: true

  pg_search_scope :global_search,
    against: [ :title, :activity ],
    using: {
      tsearch: { prefix: true } # Permet la recherche partielle, ex: "super" matchera avec "superman"
    }
end
