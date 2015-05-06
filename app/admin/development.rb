ActiveAdmin.register Development do

  controller do
      defaults :finder => :find_by_slug
  end

  active_admin_import

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :development_type_id, :name, :featured_image, :address, :description, :building_info, :amenities_image, :services_image, :residence_image, :penthouse_image, :area_and_floorplan_image, :floorplan_pdf, :penthouse, :payment_schedule, :area_url, :relation_development_1, :relation_development_2, :relation_development_3, :meta_description, :no_penthouse,
  amenities_attributes: [:id, :name, :_destroy], building_services_attributes: [:id, :name, :_destroy], residence_types_attributes: [:id, :name, :_destroy], residence_features_attributes: [:id, :name, :_destroy], galleries_attributes: [:id, :name, pictures_attributes: [:id, :name, :description, :image, :_destroy]]
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
      f.input :meta_description
      f.input :featured_image, :hint => f.image_tag(f.object.featured_image.url(:admin))
      f.input :address
      f.input :description, as: :ckeditor
      f.input :building_info, as: :ckeditor
      f.input :amenities_image
      f.has_many :amenities do |a|
        a.input :name
        a.input :_destroy, :as=>:boolean, :label=>'Remove'
      end
      f.input :services_image, :hint => f.image_tag(f.object.services_image.url(:admin))
      f.has_many :building_services do |a|
        a.input :name
        a.input :_destroy, :as=>:boolean, :label=>'Remove'
      end
      f.input :residence_image, :hint => f.image_tag(f.object.residence_image.url(:admin))
      f.has_many :residence_types, heading: 'Residence Types' do |a|
        a.input :name
        a.input :_destroy, :as=>:boolean, :label=>'Remove'
      end
      f.has_many :residence_features, heading: 'Residence Features' do |a|
        a.input :name
        a.input :_destroy, :as=>:boolean, :label=>'Remove'
      end
      f.has_many :galleries do |a|
        a.input :name
        a.has_many :pictures do |pic|
          pic.input :name
          pic.input :description
          pic.input :image, :hint => pic.template.image_tag(pic.object.image.url(:admin))
          pic.input :_destroy, :as=>:boolean, :label=>'Remove'
        end
      end
      f.input :no_penthouse, label: "Please check this box if you do not want a Penthouse section."
      f.input :penthouse_image, :hint => f.image_tag(f.object.penthouse_image.url(:admin))
      f.input :penthouse, as: :ckeditor
      f.input :payment_schedule, as: :ckeditor
      f.input :area_and_floorplan_image, :hint => f.image_tag(f.object.area_and_floorplan_image.url(:admin))
      f.input :area_url
      f.input :floorplan_pdf
      f.input :relation_development_1, as: :select, collection: Development.all, :label=>'Development 1'
      f.input :relation_development_2, as: :select, collection: Development.all, :label=>'Development 2'
      f.input :relation_development_3, as: :select, collection: Development.all, :label=>'Development 3'
    end
    f.actions
  end

end
