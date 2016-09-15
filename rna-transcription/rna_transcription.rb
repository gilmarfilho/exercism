module BookKeeping
  VERSION = 4
end

class Complement
    def self.of_dna (rna)
        
        if rna.gsub(/[CGTA]/, 'C' => '', 'G' => '', 'T' => '', 'A' => '').length != 0
            ""
        else
            rna.gsub!(/[CGTA]/, 'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U')
        end
    end
end