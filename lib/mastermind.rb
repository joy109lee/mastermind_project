require_relative "code"

class Mastermind
    def initialize(length)
        @secret_code = []
        length.times do
            @secret_code << POSSIBLE_PEGS.sample
        end
    end

end
