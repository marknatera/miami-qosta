ActiveAdmin.register Gallery do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :development_id, :name, pictures_attributes: [:id, :name, :image, :_destroy]
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


  form do |f|
    f.inputs "Gallery Details" do
      f.input :development
      f.input :name
      f.has_many :pictures do |a|
        a.input :name
        a.input :description
        a.input :image
        a.input :_destroy, :as=>:boolean, :label=>'Remove'
      end
    end
    f.actions
  end

end
