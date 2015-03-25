class AddAttachmentPenthouseImageAreaAndFloorplanImageFloorplanPdfToDevelopments < ActiveRecord::Migration
  def self.up
    change_table :developments do |t|
      t.attachment :penthouse_image
      t.attachment :area_and_floorplan_image
      t.attachment :floorplan_pdf
    end
  end

  def self.down
    remove_attachment :developments, :penthouse_image
    remove_attachment :developments, :area_and_floorplan_image
    remove_attachment :developments, :floorplan_pdf
  end
end
