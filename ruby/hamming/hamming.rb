class Hamming
 def self.compute(strand1, strand2)
  raise ArgumentError if strand1.size != strand2.size
  find_unequal_indexes(strand1, strand2)
 end

 def self.find_unequal_indexes(strand1, strand2)
  unequal_index_count = 0
  strand1.chars.map.with_index do |char, i| 
   unequal_index_count += 1 unless char == strand2[i]
  end
  unequal_index_count
 end
end

module BookKeeping
 VERSION = 3
end