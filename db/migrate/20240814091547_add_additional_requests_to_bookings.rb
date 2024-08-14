class AddAdditionalRequestsToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :additional_requests, :text
  end
end
