class Shop

  DISCOUNT_HASH = { 2 => 5, 3 => 10, 4 => 20, 5 => 25 }

  def buy(books)
    books = books.reject { |n| n == 0 }
    return 0 if books.empty?

    less = [books.size - 1, 1].max
    books1 = deduct_each_n(books, books.size)
    books2 = deduct_each_n(books, less)
    cost1 = cost(books.size) + buy(books1)
    cost2 = cost(less) + buy(books2)
    [cost1,cost2].min
  end

  def discount(number)
    DISCOUNT_HASH.fetch(number, 0).to_f
  end

  def deduct_each_n(books, n)
    deduct_each(books.take(n)).concat(books.drop(n))
  end

  def deduct_each(ns)
    ns.map { |n| n - 1 }
  end

  def cost(number)
    amount = number * 8
    (amount - (amount * (discount(number) / 100)))
  end
end
