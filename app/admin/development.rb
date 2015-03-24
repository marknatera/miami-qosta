ActiveAdmin.register Development do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :development_type_id, :name, :address, amenities_attributes: [:id, :name, :_destroy], building_services_attributes: [:id, :name, :_destroy], residences_attributes: [:id, :title, :_destroy]
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
    f.input :building_info, as: :ckeditor
    f.input :description, as: :ckeditor
    f.has_many :amenities do |a|
      a.input :name
      a.input :_destroy, :as=>:boolean, :label=>'Remove'
    end
    f.has_many :building_services do |a|
      a.input :name
      a.input :_destroy, :as=>:boolean, :label=>'Remove'
    end
    f.has_many :residences do |a|
      a.input :title
      a.input :_destroy, :as=>:boolean, :label=>'Remove'
    end
  end
  f.actions
end

end
