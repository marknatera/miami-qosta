class AddDevelopmentToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :development_id, :integer
  end
end
