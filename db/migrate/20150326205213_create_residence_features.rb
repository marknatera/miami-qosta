class CreateResidenceFeatures < ActiveRecord::Migration
  def change
    create_table :residence_features do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
