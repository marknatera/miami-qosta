class Gallery < ActiveRecord::Base
  belongs_to :development

  has_many :pictures, :dependent => :destroy
  accepts_nested_attributes_for :pictures, allow_destroy: true

end
