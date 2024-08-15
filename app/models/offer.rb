# app/models/offer.rb
class Offer < ApplicationRecord
  include PgSearch::Model

  pg_search_scope :global_search,
    against: [ :title, :activity ],
    using: {
      tsearch: { prefix: true } # Permet la recherche partielle, ex: "super" matchera avec "superman"
    }

  # Autres associations et validations
end
