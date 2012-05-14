require 'test_helper'

class BulletTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @valid_attribs = {:name => "Some 9mm", :diameter => 0.315, :weight => 124, 
      :caliber_id => calibers(:nine_mm).id, 
      :manufacturer_id => manufacturers(:federal).id, 
      :bullet_type_id => bullet_types(:fmj).id}
    @bullet = Bullet.new(@valid_attribs)
  end


  test "must have a manufacturer id" do
    @bullet.manufacturer = nil
    should_not_be_valid
  end

  test 'must have a caliber_id' do
    @bullet.caliber = nil
    should_not_be_valid
  end

  test 'must have a bullet_type_id' do
    @bullet.bullet_type = nil
    should_not_be_valid
  end

  test 'diameter must be present' do
    @bullet.diameter = nil
    should_not_be_valid
  end

  test 'must have a diameter greater than zero' do
    @bullet.diameter = 0
    should_not_be_valid
  end

  test 'must have a diameter less than 1' do
    @bullet.diameter = 1
    should_not_be_valid
  end

  test 'weight must be greater than zero' do
    @bullet.weight = 0
    should_not_be_valid
  end

  test 'weight must be less than 801' do
    @bullet.weight = 802
    should_not_be_valid
  end

  test 'weight should be an integer' do
    @bullet.weight = 1.5
    should_not_be_valid
  end


  test "valid attribs returns valid" do
    attribs = {:name => "Some 9mm", :diameter => 0.315, :weight => 124, 
      :caliber_id => calibers(:nine_mm).id, 
      :manufacturer_id => manufacturers(:federal).id, 
      :bullet_type_id => bullet_types(:fmj).id}

    bullet = Bullet.new(attribs)
    assert bullet.valid?,"#{bullet.inspect}"
  end

  private
  def should_not_be_valid
    assert !@bullet.valid?, "failed: #{@bullet.inspect}"
  end
end
