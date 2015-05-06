class AddPenthouseBooleanToDevelopment < ActiveRecord::Migration
  def change
    add_column :developments, :no_penthouse, :boolean
  end
end
