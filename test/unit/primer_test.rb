require 'test_helper'

class PrimerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @valid_attribs = {:name => "500", :manufacturer => manufacturers(:cci), :primer_size => primer_sizes(:small_pistol)}
    @invalid_attribs = {:name => ""}
    @valid_primer = Primer.new(@valid_attribs)
  end

  test 'name is not null' do
    @valid_primer.name = ""
    assert !@valid_primer.valid?
  end

  test "manufacturer is not null" do
    @valid_primer.manufacturer = nil
    assert !@valid_primer.valid?
  end

  test "primer_size is not null" do
    @valid_primer.primer_size = nil
    assert !@valid_primer.valid?
  end

  test "name is unique" do
    @valid_primer.save
    primer2 = @valid_primer.clone
    assert !primer2.save
  end
end
