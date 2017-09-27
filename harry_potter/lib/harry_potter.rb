class Shop

  DISCOUNT_HASH = { 2 => 5, 3 => 10, 4 => 20, 5 => 25 }

  def buy(books)
    books = books.reject { |n| n == 0 }
    return 0 if books.empty?
    amount = books.size * 8
    books = books.map { |n| n - 1 }
    (amount - (amount * (discount(books.size) / 100))) + buy(books)
  end

  def discount(number)
    DISCOUNT_HASH.fetch(number, 0).to_f
  end

end
