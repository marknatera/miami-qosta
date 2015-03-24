class CreateResidences < ActiveRecord::Migration
  def change
    create_table :residences do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
