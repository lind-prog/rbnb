class AddTitleToOffers < ActiveRecord::Migration[7.1]
  def change
    add_column :offers, :title, :string
  end
end
