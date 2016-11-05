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
permit_params :property_type, :price, :room_number, :square_meters, :pieces_number, :description, :opinion, :created_at, :updated_at, :bathroom, :wc, :floor, :terrace, :cellar, :transports, :transport, :school, :shop, :heating, :bus, :metro, :address

end
