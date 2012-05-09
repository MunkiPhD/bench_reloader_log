require 'test_helper'

class CaliberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @valid_attribs = {:name => "9mm Luger", :load_type => load_types(:pistol)}
    @invalid_attribs = {:name => "", :load_type => load_types(:rifle)}
  end
  
  test 'name is not valid if null' do
    caliber = Caliber.new(@invalid_attribs)
    assert !caliber.valid?
  end

  test 'is valid with valid attributes' do
    caliber = Caliber.new(@valid_attribs)
    assert caliber.valid?
  end

  test 'has a load_type associated with it' do
    caliber = Caliber.new(:name => "test name")
    assert !caliber.valid?
  end
end
