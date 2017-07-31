class Gigasecond

  GIGASECOND = 1_000_000_000

  def self.from(inception)
    born_sec = inception.to_i 
    age_is_gigasecond = born_sec + GIGASECOND
    Time.at(age_is_gigasecond)
  end
end

module BookKeeping
  VERSION = 6
end