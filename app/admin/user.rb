ActiveAdmin.register User do

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
#   permitted
# end
form do |f|
  f.inputs "Identity" do
    f.input :email
  end
  f.inputs "Admin" do
    f.input :admin
  end
  f.actions
end
index do
  selectable_column
    column :id
    column :email
    column :created_at
    column :admin
    actions
end

end
