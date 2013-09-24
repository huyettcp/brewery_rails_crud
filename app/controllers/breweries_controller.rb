class BreweriesController < ApplicationController
  def index
    @breweries = Brewery.all
    @beers = Beer.all
  end
  def new
    
  end
  def create
    if brewery = Brewery.create(params[:brewery])
      redirect_to "/breweries/#{brewery.id}"
    else
      redirect_to "/breweries/new"
    end
  end
  def show
    @brewery = Brewery.find(params[:id])
  end
  def delete
    brewery = Brewery.find(params[:id])
    brewery.destroy
    redirect_to '/breweries'
  end
  def edit
    @brewery = Brewery.find(params[:id])
  end
  def update
    brewery = Brewery.find(params[:id])
    brewery.update_attributes(params[:brewery])
    redirect_to '/breweries'
  end
  def new_beer
    id = params[:id]
    @brewery = Brewery.find(id)
  end
  def add_beer
    id = params[:id]
    brewery = Brewery.find(id)
    beer = brewery.beer.new
    beer.beer_name = params[:beer][:beer_name]
    beer.a_b_v = params[:beer][:a_b_v]
    beer.style = params[:beer][:style]
    beer.save
    redirect '/breweries'


  end
end