class Beer < ActiveRecord::Base
  attr_accessible :a_b_v, :beer_name, :style
  belongs_to :brewery
end
