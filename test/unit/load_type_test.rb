require 'test_helper'

class LoadTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @load = LoadType.new
  end

  test "name is not null" do
    @load.name = ""
    assert !@load.valid?, "Name is not null"
  end
end
