class AddDevelopmentTypeToDevelopment < ActiveRecord::Migration
  def change
    add_column :developments, :development_type_id, :integer
  end
end
