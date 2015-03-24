class CreateDevelopments < ActiveRecord::Migration
  def change
    create_table :developments do |t|
      t.string :name
      t.string :address
      t.text :description
      t.text :building_info
      t.string :area_url

      t.timestamps null: false
    end
  end
end
