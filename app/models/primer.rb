class Primer < ActiveRecord::Base
  belongs_to :manufacturer
  belongs_to :primer_size

  attr_accessible :name, :manufacturer, :primer_size

  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :manufacturer
  validates_presence_of :primer_size
end
