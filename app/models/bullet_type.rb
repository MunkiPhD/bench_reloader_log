class BulletType < ActiveRecord::Base
  attr_accessible :acronym, :name

  validates_presence_of :name
  validates_uniqueness_of :name
  validates_length_of :name, :in => (3..35)
  
  validates_presence_of :acronym
  validates_uniqueness_of :acronym
  validates_length_of :acronym, :in => (1..8)

  before_save :upcase_acronym

  private
  def upcase_acronym
    self.acronym = self.acronym.upcase
  end
end
