class AddAttachmentFeaturedImageToDevelopments < ActiveRecord::Migration
  def self.up
    change_table :developments do |t|
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :developments, :featured_image
  end
end
