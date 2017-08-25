class Clock
  MINUTES_PER_HOUR = 60
  HOURS_PER_DAY = 24

  attr_reader :total_minutes

  def self.at(*args)
    new(*args)
  end

  def initialize(hours, minutes)
    @total_minutes = hours * MINUTES_PER_HOUR + minutes
  end

  def +(hour=0, minutes)
    @total_minutes += hour * HOURS_PER_DAY + minutes
    self
  end

  def ==(clock)
    to_s == clock.to_s
  end

  def to_s
    format("%02d:%02d", hours, minutes)
  end

  private

  # rolling, and rolling
  def hours
    total_minutes / MINUTES_PER_HOUR % HOURS_PER_DAY
  end

  def minutes
    total_minutes % MINUTES_PER_HOUR
  end
end

module BookKeeping
  VERSION = 2
end
