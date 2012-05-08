class Manufacturer < ActiveRecord::Base
  attr_accessible :abbreviation, :name
  validates_presence_of :name
  validates_length_of :name, :in => (5..35)

  validates_presence_of :abbreviation
  validates_length_of :abbreviation, :in => (2..4)

  before_save :upcase_abbreviation


  private
  def upcase_abbreviation
    self.abbreviation = self.abbreviation.upcase
  end
end
