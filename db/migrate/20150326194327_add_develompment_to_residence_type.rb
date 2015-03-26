class AddDevelompmentToResidenceType < ActiveRecord::Migration
  def change
    add_column :residence_types, :development_id, :integer
  end
end
