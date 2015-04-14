class AddDevelopmentToDev < ActiveRecord::Migration
  def change
    add_column :devs, :development_id, :integer
  end
end
