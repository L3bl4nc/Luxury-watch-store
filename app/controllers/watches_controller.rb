class WatchesController < ApplicationController

  def index
    if params[:query].present?
      @watches = Watch.where("brand ILIKE :query", query: "%#{params[:query]}%")
    else
      @watches = Watch.all
    end
  end

  def show
    @watch = Watch.find(params[:id])
  end

  def new
    @watch = Watch.new
  end

  def create
    @watch = Watch.new(watch_params)
		@watch.user = current_user
		
    if @watch.save
      redirect_to watches_path
    else
      render :new
    end
  end

  private

  def watch_params
    params.require(:watch).permit(:brand, :reference_number, :model_year, :price, :condition, :photo)
  end
end
