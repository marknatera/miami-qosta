ActiveAdmin.register Post do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :featured_image, :content
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  form do |f|
    f.inputs "Post Details" do
      f.input :title
      f.input :featured_image, :hint => f.image_tag(f.object.featured_image.url(:admin))
      f.input :content, as: :ckeditor
    end
    f.actions
  end

end
