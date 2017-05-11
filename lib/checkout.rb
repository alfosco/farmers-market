class Checkout
  attr_reader :basket

  def initialize
    @basket = []
  end

  def scan(product)
    basket << product
  end
end
