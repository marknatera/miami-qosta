class CreateDevs < ActiveRecord::Migration
  def change
    create_table :devs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
