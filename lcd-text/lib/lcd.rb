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

  def left(line, num)
    v(left_enabled?(line, num))
  end

  def left_enabled?(line, num)
    line != 0 && [
      (line > scale) && NUM_TO_LCD[num][5] == 1,
      (line <= scale) && NUM_TO_LCD[num][3] == 1,
    ].any?
  end

  def middle(line, num)
    h(middle_enabled?(line, num)) * ((scale * 3) - 2)
  end

  def middle_enabled?(line, num)
    [
      line == 0 && NUM_TO_LCD[num][0] == 1,
      line == scale && NUM_TO_LCD[num][1] == 1,
      line == scale * 2 && NUM_TO_LCD[num][2] == 1,
    ].any?
  end

  def right(line, num)
    v(right_enabled?(line, num))
  end

  def right_enabled?(line, num)
    line != 0 && [
      (line > scale) && NUM_TO_LCD[num][6] == 1,
      (line <= scale) && NUM_TO_LCD[num][4] == 1,
    ].any?
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
