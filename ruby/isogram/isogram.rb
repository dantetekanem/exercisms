class Isogram
  def self.isogram?(string)
    return true if string.empty?

    string = string.downcase.gsub(/\_|\-| /, '')
    string.chars.none? { |char| string.count(char) > 1 }
  end
end

module BookKeeping
  VERSION = 4
end
