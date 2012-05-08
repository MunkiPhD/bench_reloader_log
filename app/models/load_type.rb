class LoadType < ActiveRecord::Base
  attr_protected :name

  validates_presence_of :name
end
