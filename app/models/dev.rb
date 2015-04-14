class Dev < ActiveRecord::Base
  has_and_belongs_to_many :developments
end
