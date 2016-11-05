class FlatsController < ApplicationController
before_action :set_flat, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!, except: [:index, :show]

  def index
    @flats = Flat.all
  end

  def show
    @flats = Flat.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@flats) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
      end
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new flat_params
    @user = current_user
  end

  def edit
  end

  def update
    @flat.update flat_params
  end

  def destroy
    @flat.destroy
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:property_type, :price, :room_number, :square_meters, :pieces_number, :description, :opinion,  :bathroom, :wc, :floor, :terrace, :cellar, :transports, :around_description, :environment, :transport, :school, :shop, :heating, :bus, :metro, :address)
  end
end
