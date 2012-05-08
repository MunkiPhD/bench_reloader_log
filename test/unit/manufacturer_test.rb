require 'test_helper'

class ManufacturerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @manu = Manufacturer.new
    @manu.abbreviation = "1342"
    @valid_attribs = {:name => "winchester", :abbreviation => "ABC" }
  end

  test "name is not null" do
    assert_equal false, @manu.valid?
  end

  test "name is between 5 and 35 characters long" do
    @manu.name = "1234"
    assert_equal false, @manu.valid?, "4 chars was found invalid"
  end

  test "35 chars is valid" do
    @manu.name = "1" * 35
    assert @manu.valid?, "35 characters was found to not valid"
  end

  test "36 characters is invalid" do
    @manu.name = "1" * 36
    assert !@manu.valid?, "36 characters was found to be valid"
  end

  test "abbreviation is not null" do
    @manu.name = "12312313"
    @manu.abbreviation = ""
    assert !@manu.valid?, "abbreviation is null"
  end

  test "abbreviation is between 2 and 4 characters long" do
    @manu.name = "123456"
    @manu.abbreviation = "1"
    assert !@manu.valid?

    @manu.abbreviation = "12"
    assert @manu.valid?

    @manu.abbreviation = "1234"
    assert @manu.valid?

    @manu.abbreviation = "12345"
    assert !@manu.valid?
  end

  test "lower case abbreviation is saved as uppercase" do
    @manu.name = "test1"
    @manu.abbreviation = "abc"
    assert @manu.valid?

    @manu.save

    assert_equal "ABC", @manu.abbreviation
  end

  test "name should be unique" do
    one = Manufacturer.new(@valid_attribs)
    assert one.save, "failed to save one"

    two = Manufacturer.new(@valid_attribs)
    assert !two.valid?, "two is not valid"
    assert_equal 1, two.errors[:name].count, 'names are not unique'
  end

  test "abbreviation should be unique" do
    one = Manufacturer.new(@valid_attribs)
    assert one.save, "failed to save one"

    two = Manufacturer.new(@valid_attribs)
    assert !two.valid?, 'two is not valid'
    assert_equal 1, two.errors[:abbreviation].count, "error count on abbreviations is wrong"
    assert_equal "has already been taken", two.errors[:abbreviation][0], "message is different"
  end
end
