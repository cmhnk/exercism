class Complement

  COMPLEMENTS = {
    G: 'C', 
    C: 'G',
    T: 'A',
    A: 'U'
  }

  def self.of_dna(nucleotide)
    of_single_nucleotide(nucleotide) unless nucleotide.size > 1
    nucleotide.chars.map {|char| of_single_nucleotide(char)}.join
  end

  def self.of_single_nucleotide(nucleotide)
    COMPLEMENTS.fetch(nucleotide.to_sym, '')
  end
end