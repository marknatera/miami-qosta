class AddRelatinsToDevelopments < ActiveRecord::Migration
  def change
    add_column :developments, :relation_development_1, :integer
    add_column :developments, :relation_development_2, :integer
    add_column :developments, :relation_development_3, :integer
  end
end
