class AddAttachmentAmenitiesImageServicesImageResidenceImageToDevelopments < ActiveRecord::Migration
  def self.up
    change_table :developments do |t|
      t.attachment :amenities_image
      t.attachment :services_image
      t.attachment :residence_image
    end
  end

  def self.down
    remove_attachment :developments, :amenities_image
    remove_attachment :developments, :services_image
    remove_attachment :developments, :residence_image
  end
end
