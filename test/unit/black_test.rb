require 'test_helper'

class BlackTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Black.new.valid?
  end
end
