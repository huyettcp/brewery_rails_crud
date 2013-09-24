class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :beer_name
      t.string :a_b_v
      t.string :style

      t.timestamps
    end
  end
end
