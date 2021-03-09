class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :user
      t.string :sights
      t.string :flights
    end
  end
end
