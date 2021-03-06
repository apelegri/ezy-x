class FlatsController < ApplicationController
  before_action :set_flat, only: [ :show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!

  def index
    @flats = Flat.all
    #@leases = Lease.all
  end

  def show
    @hash = Gmaps4rails.build_markers(@flat) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def new
    @flat = Flat.new.user_id
    @image = @flat_id.images.build
  end

  def create
    @flat = Flat.new flat_params
  end

  def edit
  end

  def update
    respond_to do |format|
      if @flat.update(flat_params)
        if params[:images]
          params[:images].each do |image|
            @flat.images.create(image: image)
          end
        end
        format.html { redirect_to @flat, notice: 'Photos was successfully uploaded.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @flat.errors, status: :unprocessable_entity }
      end
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
    params.permit(
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
      images_attributes: [:image, :flat_id])
  end
end
