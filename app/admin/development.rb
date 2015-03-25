ActiveAdmin.register Development do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :development_type_id, :name, :featured_image, :address, :description, :building_info, :amenities_image, :services_image, :residence_image, :penthouse_image, :area_and_floorplan_image, :floorplan_pdf, :penthouse, :payment_schedule, :area_url, amenities_attributes: [:id, :name, :_destroy], building_services_attributes: [:id, :name, :_destroy], residences_attributes: [:id, :title, :_destroy], galleries_attributes: [:id, :name, pictures_attributes: [:id, :name, :description, :image, :_destroy]]
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
      f.input :featured_image
      f.input :address
      f.input :description, as: :ckeditor
      f.input :building_info, as: :ckeditor
      f.input :amenities_image
      f.has_many :amenities do |a|
        a.input :name
        a.input :_destroy, :as=>:boolean, :label=>'Remove'
      end
      f.input :services_image
      f.has_many :building_services do |a|
        a.input :name
        a.input :_destroy, :as=>:boolean, :label=>'Remove'
      end
      f.input :residence_image
      f.has_many :residences do |a|
        a.input :title
        a.input :_destroy, :as=>:boolean, :label=>'Remove'
      end
      f.has_many :galleries do |a|
        a.input :name
        a.has_many :pictures do |pic|
          pic.input :name
          pic.input :description
          pic.input :image
          pic.input :_destroy, :as=>:boolean, :label=>'Remove'
        end
      end
      f.input :penthouse_image
      f.input :penthouse, as: :ckeditor
      f.input :payment_schedule, as: :ckeditor
      f.input :area_and_floorplan_image
      f.input :area_url
      f.input :floorplan_pdf
    end
    f.actions
  end

end
