require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'

class ProductTest < Minitest::Test
  def test_product_instantiation
    product = Product.new("Chai", "CH1", 3.11)
    assert_instance_of Product, product
  end

  def test_it_has_a_name
    product = Product.new("Chai", "CH1", 3.11)
    assert_equal "Chai", product.name
  end

  def test_it_has_a_code
    product = Product.new("Chai", "CH1", 3.11)
    assert_equal "CH1", product.code
  end

  def test_it_has_a_price
    product = Product.new("Chai", "CH1", 3.11)
    assert_equal 3.11, product.price
  end
end
