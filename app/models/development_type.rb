class DevelopmentType < ActiveRecord::Base
  has_many :developments, :dependent => :destroy
  accepts_nested_attributes_for :developments, allow_destroy: true
end
