class CreateOffers < ActiveRecord::Migration[7.1]
  def change
    create_table :offers do |t|
      t.integer :number_of_fan
      t.string :enthusiasm_level
      t.string :activity
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
