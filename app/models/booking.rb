class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  validates :date, presence: true
  validates :additional_requests, length: { maximum: 500 }, allow_blank: true
end
