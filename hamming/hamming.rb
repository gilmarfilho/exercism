module BookKeeping
  VERSION = 3
end

class Hamming
    def self.compute(dna1, dna2)
        result = 0
        if dna1.length == dna2.length
            for i in 0..dna1.length - 1
                if dna1[i] != dna2[i]
                    result = result + 1
                end
            end
            result
        else
            raise ArgumentError.new("Insert two DNAs with the same size please")
        end
    end
end