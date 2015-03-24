class CreateDevelopmentTypes < ActiveRecord::Migration
  def change
    create_table :development_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
