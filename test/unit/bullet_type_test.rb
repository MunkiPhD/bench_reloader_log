require 'test_helper'

class BulletTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #
  def setup
    @valid_attribs = {:name => "Full Metal Jacket", :acronym => "FMJ"}
    @invalid_attribs = {:name => "", :acronym => ""}
    @bullet = BulletType.new(@valid_attribs)
  end

  test "valid attributes are valid" do
    bullet = BulletType.new(@valid_attribs)
    assert bullet.valid?, "#{bullet.errors[:name]} :::: #{bullet.errors[:acronym]}"
  end

  test "name is not null" do
    @bullet.name = ""
    assert !@bullet.valid?
  end

  test "name is larger than 2 chars" do
    @bullet.name = "2" * 2
    assert !@bullet.valid?
  end

  test "name is less than 35 chars" do
    @bullet.name = "a" * 36
    assert !@bullet.valid?, "Name is longer than 35?"
  end

  test "acronym is not null" do
    @bullet.acronym = ""
    assert !@bullet.valid?
  end

  test "name is unique" do
    assert @bullet.save, "@bullet saved"
    bobba = BulletType.new(@valid_attribs)
    bobba.acronym = "xxx"
    assert !bobba.save, "bobba failed to save"
  end

  test "acronym is unique" do
    type1 = BulletType.create(@valid_attribs)
    assert type1.valid?, "#{type1.inspect} :: type1 is not valid"

    type2 = BulletType.new(:name => "asdsa", :acronym => type1.acronym)
    type2.valid?
    assert_not_nil type2.errors[:acronym]
  end


  test "acronym is between 1 and 8 characters" do
    @bullet.acronym = ""
    assert !@bullet.valid?, "lower limit check"

    @bullet.acronym = "x" * 9
    assert !@bullet.valid?, "upper limit check"
  end

  test "acronym is all caps" do
    @bullet.acronym = "abc"
    assert @bullet.save
    assert_equal "ABC", @bullet.acronym
  end
end
