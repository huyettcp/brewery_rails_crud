class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :beer_name, :limit => 51
      t.string :a_b_v, :limit => 4
      t.string :style, :limit => 10
      t.belongs_to :breweries

  end
end

