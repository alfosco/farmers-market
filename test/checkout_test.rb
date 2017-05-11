require 'minitest/autorun'
require 'minitest/pride'
require './lib/checkout'

class CheckoutTest < Minitest::Test
  def test_checkout_instantiation
    co = Checkout.new
    assert_instance_of Checkout, co
  end
end
