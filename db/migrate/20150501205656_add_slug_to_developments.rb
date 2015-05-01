class AddSlugToDevelopments < ActiveRecord::Migration
  def change
    add_column :developments, :slug, :string
    add_index :developments, :slug
  end
end
