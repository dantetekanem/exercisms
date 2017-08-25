module Enumerable
  def accumulate(&block)
    self.map { |op| block.call(op) }
  end
end

module BookKeeping
  VERSION = 1
end
