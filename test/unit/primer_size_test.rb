require 'test_helper'

class PrimerSizeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup 
    @invalid_attribs = {:name => ""}
  end

  test 'name cannot be null' do
    assert !PrimerSize.new(@invalid_attribs).valid?
  end
end
