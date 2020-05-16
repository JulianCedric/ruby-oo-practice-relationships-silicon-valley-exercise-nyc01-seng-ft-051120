class VentureCapitalist
    @@all = [] 
    attr_accessor :name, :total_worth

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        VentureCapitalist.all << self
    end

    def self.all 
        @@all 
    end

   def self.tres_commas_club
    x = VentureCapitalist.all.select do |vc|
        vc.total_worth > 1000000000
    end 
    x
    end

    def funding_rounds
        x = FundingRound.all.select do |fr|
            fr.vc == self 
        end
        x
    end

end
