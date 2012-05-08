class Manufacturer < ActiveRecord::Base
  attr_accessible :abbreviation, :name
  validates_presence_of :name
  validates_length_of :name, :maximum => 35, :minimum => 5
  validates_presence_of :abbreviation
  validates_length_of :abbreviation, :in => (2..4)
end
