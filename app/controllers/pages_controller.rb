class PagesController < ApplicationController
  before_action :set_flat

  def home
    @flats = Flat.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@flats) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
      marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end

  end

  def about
  end


private
   def set_flat

  end
end
