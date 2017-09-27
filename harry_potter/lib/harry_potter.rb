class Shop

  DISCOUNT_HASH = { 2 => 5, 3 => 10, 4 => 20, 5 => 25 }

  def initialize
    @basket = []
  end

  def buy(books)
    @basket = books
    8 * (@basket.sum)
  end

  def discount(books)
    amount = books.reject { |n| n == 0 }.size
    DISCOUNT_HASH.fetch(amount, 0)
  end

end
