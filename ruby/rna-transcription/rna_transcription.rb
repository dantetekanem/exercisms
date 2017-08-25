class Complement
  def self.of_dna(dna)
    return '' if dna.delete('GCTA').length > 0

    dna.gsub(/[GCTA]/, 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')
  end
end

module BookKeeping
  VERSION = 4
end
