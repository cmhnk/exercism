class Hamming 

  def self.compute(strand1, strand2)
  	# raise an error if strand1.size != strand2.size
  	return 0 if strand1 == strand2
  	find_unequal_indexes(strand1, strand2)
  end

  def self.find_unequal_indexes(strand1, strand2)
  	unequal_index_count = 0
  	strand1.chars.map.with_index do |char, i|
  	  next if char == strand2[i]
  	  unequal_index_count += 1
  	end
  	unequal_index_count 
  end
end