require_relative "code"

class Mastermind

    def initialize(length)
        @secret_code = Code.random(length)
    end

    def print_matches(code)
        puts Code.num_exact_matches(code)
        puts Code.num_near_matches(code)
    end

end
