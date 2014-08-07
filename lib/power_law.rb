require "power_law/version"

module PowerLaw
  class Score
    attr_reader :sigma_ln_x
    # scores is the array of scores ordered by date
    def initialize(scores)
      n = scores.size
      @sigma_ln_x = sigma_ln_x [*1..scores.size]
      @sigma_ln_s = sigma_ln_s scores
    end
  
    def ln(x)
      Math::log(x,Math::E)
    end
  
    def sigma_ln_x(ordinal)
      ordinal.sum { |o| ln o }
    end
  
    def sigma_ln_s(score)
      score.sum { |s| ln s }
    end
  
    def sigma_lnx_lns(scores)
      sum_up = []
      scores.each_with_index do |s,i|
        x = i+1 # ordinal number of score
        sum_up << ln(x)*ln(s)
      end
      sum_up.sum
    end
  end
end
