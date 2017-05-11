require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'

class ProductTest < Minitest::Test
  def test_product_instantiation
    product = Product.new("Chai")
    assert_instance_of Product, product
  end

  def test_it_has_a_name
    product = Product.new("Chai")
    assert_equal "Chai", product.name
  end
end
