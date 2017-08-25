class Raindrops
  attr_reader :number

  def self.convert(*args)
    new(*args).convert
  end

  def initialize(number)
    @number = number
  end

  def convert
    raindrops = ""
    raindrops << "Pling" if number % 3 == 0
    raindrops << "Plang" if number % 5 == 0
    raindrops << "Plong" if number % 7 == 0

    raindrops.empty? ? number.to_s : raindrops
  end
end

module BookKeeping
  VERSION = 3
end
