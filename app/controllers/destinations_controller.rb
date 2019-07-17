class DestinationsController < ApplicationController
  before_action :find_destination, only: [:show, :create, :update]

  def index
    @destinations = Destination.all
  end
    
  def new
    @destination = Destination.new
  end

  def show
    @posts = @destination.posts
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
  def find_destination
    @destination = Destination.find(params[:id])
  end

  def destination_params
    params.require(:destination).permit(:name, :country)
  end

end
