class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first
      t.string :last
      t.string :email
      t.string :cellphone
      t.string :interest
      t.text :message

      t.timestamps null: false
    end
  end
end
