class Development < ActiveRecord::Base
  belongs_to :development_type

  has_many :amenities, :dependent => :destroy
  accepts_nested_attributes_for :amenities, allow_destroy: true
end
