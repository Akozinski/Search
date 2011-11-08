class PlacesController < ApplicationController

def index

	@q = Place.search(params[:q])
	@places = @q.result(:distinct => true)

end

def show

	@place = Place.find(params[:id])
end

def new
    @place = Place.new
end

def create
	@place = Place.new(params[:place])
end


end
