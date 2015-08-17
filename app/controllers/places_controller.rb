class PlacesController < ApplicationController
	def index
		@places = Place.all
		@posts = Place.paginate(:page => params[:page], :per_page => 10)
	end
end
