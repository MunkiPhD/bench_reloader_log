class Caliber < ActiveRecord::Base
  attr_accessible :name, :load_type
  belongs_to :load_type

  validates_presence_of :name
  validates_presence_of :load_type
end
