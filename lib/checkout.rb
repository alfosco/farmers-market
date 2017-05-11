require './lib/product'

class Checkout
  attr_reader :basket

  def initialize
    @basket = []
  end

  def scan(product)
    basket << product
  end

  def current_basket
    puts "Item          Price"
    puts "----          -----"
    basket.each do |item|
      puts "#{item.code}            #{item.price}"
    end
    puts "-------------------"
    puts "               #{total_price}"
  end

  def total_price
    basket.map(&:price).inject(0, :+)
  end
end

co = Checkout.new
chai = Product.new("Chai", "CH1", 3.11)
apple = Product.new("Apples", "AP1", 6.00)
coffee = Product.new("Coffee", "CF1", 11.23)
milk = Product.new("Milk", "MK1", 4.75)

co.scan(chai)
co.scan(apple)

co.current_basket
