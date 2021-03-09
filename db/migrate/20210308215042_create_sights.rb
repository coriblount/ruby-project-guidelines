class CreateSights < ActiveRecord::Migration[6.1]
  def change
    create_table :sights do |t|
      t.string :name
      t.string :location
  end
end

end
