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
permit_params :property_type, :price, :bedroom_number, :square_meters, :room_number, :description, :opinion, :created_at, :updated_at, :bathroom, :wc, :floor, :terrace, :cellar, :school, :shop, :heating, :bus, :metro, :address, :user_id, :image
  index do
    id_column
    column :property_type
    column :price
    column :square_meters
    column :bedroom_number
    column :room_number
    column :address
    column :description do |n|
      truncate(n.description, length:30)
      end

    column :opinion do |n|
      truncate(n.opinion, length: 30)
      end
      actions
  end

  form do |f|
    f.inputs "Flats" do
      f.input :property_type
      f.input :price
      f.input :square_meters
      f.input :bedroom_number
      f.input :room_number
      f.input :bathroom
      f.input :description
      f.input :opinion
      f.input :wc
      f.input :heating
      f.input :floor
      f.input :terrace
      f.input :cellar
      f.input :address
      f.input :school
      f.input :shop
      f.input :bus
      f.input :metro
    end
    f.actions
  end
end
