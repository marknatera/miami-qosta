class AddDevelopmentToAmenity < ActiveRecord::Migration
  def change
    add_column :amenities, :development_id, :integer
  end
end
