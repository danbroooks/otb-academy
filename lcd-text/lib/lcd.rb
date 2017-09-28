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
    #num.to_s.split("").map { |num| NUM_TO_LCD[num.to_i] }
    split_nums = num.split("")
    (0..2 * scale).map do |i|
      split_nums.map { |num| NUM_TO_LCD[num][0] }
    end
  end
end
