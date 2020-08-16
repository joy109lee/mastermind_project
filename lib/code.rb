class Code
  attr_reader :pegs

  POSSIBLE_PEGS = 
  {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(arr)
    arr.all? {|char| POSSIBLE_PEGS.include?(char.upcase)}
  end

  def initialize(arr)
    if !Code.valid_pegs?(arr)
      raise "error"
    else
      @pegs = arr.map(&:upcase)
    end
  end
  
  def self.random(length)
    possible = []
    while possible.count < length
      possible << POSSIBLE_PEGS.to_a[rand(POSSIBLE_PEGS.count)][0]
    end
    possible
    

  end



end
