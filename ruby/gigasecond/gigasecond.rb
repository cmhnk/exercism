class Gigasecond

  GIGASECOND = 1_000_000_000

  def self.from(inception)
    time_in_sec = inception.to_i 
    answer = time_in_sec + GIGASECOND
    Time.at(answer)
  end
end