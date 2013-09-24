class Brewery < ActiveRecord::Base
  attr_accessible :name, :city, :state
  has_many :beers
end


