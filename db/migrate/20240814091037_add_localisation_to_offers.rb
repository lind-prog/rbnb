class AddLocalisationToOffers < ActiveRecord::Migration[7.1]
  def change
    add_column :offers, :localisation, :string
  end
end
