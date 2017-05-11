require 'minitest/autorun'
require 'minitest/pride'
require './lib/checkout'
require './lib/product'

class CheckoutTest < Minitest::Test
  def test_checkout_instantiation
    co = Checkout.new
    assert_instance_of Checkout, co
  end

  def test_basket_starts_empty
    co = Checkout.new
    assert co.basket.empty?
  end

  def test_scan_adds_a_product_to_the_basket
    co = Checkout.new
    chai = Product.new("Chai", "CH1", 3.11)

    co.scan(chai)
    assert_equal 1, co.basket.count
    assert_equal "Chai", co.basket.first.name
    assert_equal "CH1", co.basket.first.code
    assert_equal 3.11, co.basket.first.price
  end
end
