class Shop

  DISCOUNT_HASH = { 2 => 5, 3 => 10, 4 => 20, 5 => 25 }

  def buy(books)
    books = books.reject { |n| n == 0 }
    return 0 if books.empty?

    less = [books.size - 1, 1].max
    books1 = books.map { |n| n - 1 }
    cost1 = cost(books.size) + buy(books1)
    books2 = books.take(less).map { |n| n - 1 }.concat(books.drop(less))
    cost2 = cost(less) + buy(books2)
    [cost1,cost2].min
  end

  def discount(number)
    DISCOUNT_HASH.fetch(number, 0).to_f
  end

  def cost(number)
    amount = number * 8
    (amount - (amount * (discount(number) / 100)))
  end
end
