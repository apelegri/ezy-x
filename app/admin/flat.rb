ActiveAdmin.register Flat do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitte
# end
permit_params :property_type, :price, :room_number, :square_meters, :pieces_number, :description, :opinion, :created_at, :updated_at, :bathroom, :wc, :floor, :terrace, :cellar, :transports, :transport, :school, :shop, :heating, :bus, :metro, :address, :user_id, :image

  form do |f|
    f.inputs "Flats" do
      f.input :property_type
      f.input :price
      f.input :room_number
      f.input :square_meters
      f.input :pieces_number
      f.input :description
      f.input :opinion
      f.input :bathroom
      f.input :wc
      f.input :heating
      f.input :floor
      f.input :terrace
      f.input :cellar
      f.input :address
      f.input :transports
      f.input :transport
      f.input :school
      f.input :shop
      f.input :bus
      f.input :metro
      # f.input :photo, as: :file
      f.has_many :flat_images do |image|
        image.input :flat_id, as: :hidden
        image.input :image
      end
    end
    f.actions
  end
end
