class Shop

  DISCOUNT_HASH = { 2 => 5, 3 => 10, 4 => 20, 5 => 25 }

  def initialize
    @basket = []
  end

  def buy(books)
    @basket = books
    8 * (@basket.sum)
  end

  def discount(number)
    DISCOUNT_HASH[number]
  end

end
