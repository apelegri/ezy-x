class FlatsController < ApplicationController
before_action :set_flat, only: [:show]

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

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
