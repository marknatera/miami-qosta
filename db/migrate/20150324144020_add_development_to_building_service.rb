class AddDevelopmentToBuildingService < ActiveRecord::Migration
  def change
    add_column :building_services, :development_id, :integer
  end
end
