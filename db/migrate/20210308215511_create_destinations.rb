class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destination do |t|
      t.string :name
    
    end
  end
end
