ActiveAdmin.register Development do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :development_type_id, :name, :address, amenities_attributes: [:id, :name, :_destroy]
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


  form do |f|
  f.inputs "Development Details" do
    f.input :development_type
    f.input :name
    f.input :address
    f.has_many :amenities do |a|
      a.input :name
      a.input :_destroy, :as=>:boolean, :label=>'Remove'
    end
  end
  f.actions
end

end
