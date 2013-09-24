class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :name, :limit => 50
      t.string :city, :limit => 50
      t.string :state, :limit => 50
      t.timestamps
    end
  end
end

