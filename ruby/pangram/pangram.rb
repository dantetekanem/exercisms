class Pangram
  def self.pangram?(string)
    string.gsub(/\s+|_|[0-9]|\.|\"/, "").chars.map(&:downcase).uniq.size == 26
  end
end

module BookKeeping
  VERSION = 4
end
