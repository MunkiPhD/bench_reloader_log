class Bullet < ActiveRecord::Base
  belongs_to :manufacturer
  belongs_to :caliber
  belongs_to :bullet_type

  attr_accessible :diameter, :name, :weight, :manufacturer_id, :caliber_id, :bullet_type_id

  validates_presence_of :manufacturer_id, :caliber_id, :bullet_type_id
  validates :diameter, :numericality =>  { :only_integer => false, :greater_than => 0, :less_than => 1 }
  validates :weight, :numericality =>  { :only_integer => true, :greater_than => 0, :less_than => 801 }
end
