class Checkout
  attr_reader :basket

  def initialize
    @basket = []
  end

  def scan(product)
    basket << product
  end

  def current_basket
  end

  def total_price
    basket.map(&:price).inject(0, :+)
  end
end
