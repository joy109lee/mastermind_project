class Code
  POSSIBLE_PEGS = 
  {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  self.valid_pegs?(arr)
    arr.all? {|char| self.POSSIBLE_PEGS.include?(char)}
      return true
    else
      false
    end
  end

end
