require_relative "code"

class Mastermind

    def initialize(length)
        @secret_code = []
        random_code = Code.new(["R", "G", "R", "B"])
        length.times do
            @secret_code << random_code.pegs.sample
        end
    end

    def

end
