class LCD

  attr_reader :scale

  NUM_TO_LCD = {
    "0" => ([1, 0, 1, 1, 1, 1, 1 ]),
    "1" => ([0, 0, 0, 0, 1, 0, 1 ]),
    "2" => ([1, 1, 1, 0, 1, 1, 0 ]),
    "3" => ([1, 1, 1, 0, 1, 0, 1 ]),
    "4" => ([0, 1, 0, 1, 1, 0, 1 ]),
    "5" => ([1, 1, 1, 1, 0, 0, 1 ]),
    "6" => ([1, 1, 1, 1, 0, 1, 1 ]),
    "7" => ([1, 0, 0, 0, 1, 0, 1 ]),
    "8" => ([1, 1, 1, 1, 1, 1, 1 ]),
    "9" => ([1, 1, 1, 1, 1, 0, 1 ]),
  }

  def initialize(scale = 1)
    @scale = scale
  end

  def convert(num)
    split_nums = num.split("")

    (0..2 * scale).map { |line|
      split_nums.map { |num|
        [
          left(line, num),
          middle(line, num),
          right(line, num),
        ]
      }.flatten.join
    }.join("\n")
  end

  def enabled?(digit, bar)
    NUM_TO_LCD.fetch(digit)[bar] == 1
  end

  def left(line, num)
    v(left_enabled?(line, num))
  end

  def left_enabled?(line, num)
    if line > scale
      enabled?(num, 5)
    elsif line > 0 && line <= scale
      enabled?(num, 3)
    else
      false
    end
  end

  def middle(line, num)
    h(middle_enabled?(line, num)) * ((scale * 3) - 2)
  end

  def middle_enabled?(line, num)
    if line == 0
      enabled?(num, 0)
    elsif line == scale
      enabled?(num, 1)
    elsif line == (scale * 2)
      enabled?(num, 2)
    else
      false
    end
  end

  def right(line, num)
    v(right_enabled?(line, num))
  end

  def right_enabled?(line, num)
    if line > scale
      enabled?(num, 6)
    elsif line > 0 && line <= scale
      enabled?(num, 4)
    else
      false
    end
  end

  def h(on)
    if on
      '_'
    else
      ' '
    end
  end

  def v(on)
    if on
      '|'
    else
      ' '
    end
  end
end
