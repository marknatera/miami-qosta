class AddMetaDescriptionToDevelopment < ActiveRecord::Migration
  def change
    add_column :developments, :meta_description, :text
  end
end
