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

  def self.random(length)
    possible = []
    while possible.count < length
      possible << POSSIBLE_PEGS.to_a[rand(POSSIBLE_PEGS.count)][0]
    end
    Code.new(possible)
  end

  def self.from_string(str)
    Code.new(str.split(""))  
  end

  def initialize(arr)
    if !Code.valid_pegs?(arr)
      raise "error"
    else
      @pegs = arr.map(&:upcase)
    end
  end

  def [](idx)
    @pegs[idx]
  end
  
  def length
    @pegs.length
  end
  
  # PART 2

  def num_exact_matches(guess)
    correct = 0
    for i in 0...self.length
      if guess[i] == @pegs[i]
        correct += 1
      end
    end
    correct
  end

  def num_near_matches(guess)
    correct = 0
    for i in 0...self.length
      if @pegs.include?(guess[i]) && @pegs[i] != guess[i]
        correct += 1
      end
    end
    correct
  end

  def ==(other_code)
    other_code.pegs == self.pegs
  end
end
