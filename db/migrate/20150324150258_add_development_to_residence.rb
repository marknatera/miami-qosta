class AddDevelopmentToResidence < ActiveRecord::Migration
  def change
    add_column :residences, :development_id, :integer
  end
end
