require_relative "code"

class Mastermind

    def initialize(length)
        @secret_code = Code.random(length)
    end

    def print_matches(code)
        puts code.num_exact_matches(@secret_code)
        puts code.num_near_matches(@secret_code)
    end

end
