class WatchesController < ApplicationController
	def index
		@watches = Watch.all
	end
	
	def show
		@watch = Watch.find(params[:id])
	end

	def new
		@watch = Watch.new
	end

	def create
		@watch = Watch.new(watch_params)
		@watch.save
	end
	
	private

	def watch_params
		params.require(:watch).permit(:brand, :model_year, :price, :condition, :reference_number, :photo)
	end
end
