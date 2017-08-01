class Complement

  COMPLEMENTS = {
    G: 'C', 
    C: 'G',
    T: 'A',
    A: 'U'
  }

  def self.of_dna(nucleotide)
    of_single_nucleotide(nucleotide) unless nucleotide.size > 1
    transcription = nucleotide.chars.map {|char| of_single_nucleotide(char)}.join
    transcription.size == nucleotide.chars.size ? transcription : ''
  end

  def self.of_single_nucleotide(nucleotide)
    COMPLEMENTS[nucleotide.to_sym]
  end
end

module BookKeeping
  VERSION = 4
end