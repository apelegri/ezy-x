class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!

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
    @flat = Flat.new.user_id
  end

  def create
    @flat = Flat.new flat_params
  end

  def edit
     #@flat = Flat.new flat_params
  end

  def update
    #@flat.update flat_params
    if current_user.admin
      if @flat.update(flat_params)
        redirect_to @flat
      else
        render 'edit'
      end
    else
      flash[:alert] = "Action impossible, vous n'etes pas administrateur de ce site"
      redirect_to cocktails_path
    end
  end

  def destroy
    @flat.destroy
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(
      :property_type,
      :price,
      :bedroom_number,
      :square_meters,
      :room_number,
      :description,
      :opinion,
      :bathroom,
      :wc,
      :floor,
      :terrace,
      :cellar,
      :transports,
      :around_description,
      :environment,
      :transport,
      :school,
      :shop,
      :bus,
      :metro,
      :address,
      :image,
      :image_cache)
  end
end
