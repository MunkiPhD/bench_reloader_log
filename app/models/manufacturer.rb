class Manufacturer < ActiveRecord::Base
  attr_accessible :abbreviation, :name
  validates_presence_of :name
  validates_length_of :name, :in => (3..35)
  validates_uniqueness_of :name

  validates_presence_of :abbreviation
  validates_length_of :abbreviation, :in => (2..4)
  validates_uniqueness_of :abbreviation

  before_save :upcase_abbreviation

  has_many :primers

  private
  def upcase_abbreviation
    self.abbreviation = self.abbreviation.upcase
  end
end
