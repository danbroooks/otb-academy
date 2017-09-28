class LCD

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

  def convert(num, scale = 1)
    split_nums = num.split("")
    (0..2 * scale).map { |line|
      split_nums.map { |num|
        [
          left(line, num, scale),
          middle(line, num, scale),
          right(line, num, scale),
        ].join
      }.join
    }.join("\n")
  end

  def left(line, num, scale)
    if line == scale && NUM_TO_LCD[num][3] == 1
      v(true)
    elsif line == scale * 2 && NUM_TO_LCD[num][5] == 1
      v(true)
    else
      v(false)
    end
  end

  def middle(line, num, scale)
    if line == 0 && NUM_TO_LCD[num][0] == 1
      h(true)
    elsif line == scale && NUM_TO_LCD[num][1] == 1
      h(true)
    elsif line == scale * 2 && NUM_TO_LCD[num][2] == 1
      h(true)
    else
      h(false)
    end
  end

  def right(line, num, scale)
    if line == scale && NUM_TO_LCD[num][4] == 1
      v(true)
    elsif line == scale * 2 && NUM_TO_LCD[num][6] == 1
      v(true)
    else
      v(false)
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
