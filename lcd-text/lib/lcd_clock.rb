require_relative 'lcd'

class Clock

  def start
    Thread.new do
      loop do
        system "clear"
        print LCD.new(5).convert(Time.now.strftime("%H%M%S"))
        sleep 1
      end
    end
  end
end
