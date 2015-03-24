class CreateBuildingServices < ActiveRecord::Migration
  def change
    create_table :building_services do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
