class AddGalleryToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :gallery_id, :integer
  end
end
