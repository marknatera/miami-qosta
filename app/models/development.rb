class Development < ActiveRecord::Base
  belongs_to :development_type

  has_many :amenities, :dependent => :destroy
  has_many :building_services, :dependent => :destroy
  accepts_nested_attributes_for :amenities, :building_services, allow_destroy: true
end
