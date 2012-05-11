require 'test_helper'

class BulletTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @valid_attribs = {:name => "Full Metal Jacket", :acronym => "FMJ"}
    @invalid_attribs = {:name => "", :acronym => ""}
    @bullet = Bullet.new(
  end

  test "name is not null" do
    
  end

  test "acronym is not null" do
    flunk
  end

  test "name is unique" do
    flunk
  end

  test "acronym is unique" do
    flunk
  end


  test "acronym is between 1 and 8 characters" do
    flunk
  end

  test "acronym is all caps" do
    flunk
  end
end
