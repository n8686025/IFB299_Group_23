require 'test_helper'

class ListingTest < ActiveSupport::TestCase
  def setup
    @listing = Listing.new(address: "Example Address")
  end

  test "should be valid" do
    assert @listing.valid?
  end

  test "address should be present" do
    @listing.address = ""
    assert_not @listing.valid?
  end
end
