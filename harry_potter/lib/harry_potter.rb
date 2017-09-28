class Shop

  def buy(books, deduct = 0)
    books = books.take(deduct).map { |_| _ - 1 }.concat(books.drop(deduct))
    books = books.reject { |n| n == 0 }

    return 0 if books.empty?

    possible_discounts(books.size).map do |n|
      cost(n) + buy(books, n)
    end.min
  end

  private

  def possible_discounts(amount)
    [amount, amount - 1].select { |_| _ > 0 }.uniq
  end

  def discounts
    {
      2 => 5,
      3 => 10,
      4 => 20,
      5 => 25
    }
  end

  def cost(num)
    amount = num * 8
    (amount - (amount * calculate_discount(num)))
  end

  def calculate_discount(num)
    discounts.fetch(num, 0).to_f / 100
  end
end
