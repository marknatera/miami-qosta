class AddDevelopmentToResidenceFeature < ActiveRecord::Migration
  def change
    add_column :residence_features, :development_id, :integer
  end
end
