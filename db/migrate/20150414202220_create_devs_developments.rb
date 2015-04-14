class CreateDevsDevelopments < ActiveRecord::Migration
  def change
    create_table :developments_devs, :id => false do |t|
      t.references :dev, :development
    end

    add_index :developments_devs, [:dev_id, :development_id],
      name: "developments_devs_index",
      unique: true
  end
end
