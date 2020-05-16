class FundingRound
    @@all = []
    attr_reader :startup, :vc
    attr_accessor :type, :investment

    def initialize(startup, vc, type, investment)
        # Not sure yet how to set up investment so that it doesn't initialize with a negative value.
        @startup = startup
        @vc = vc
        @type = type 
        @investment = investment 
        # if investment.to_f < 0 
        #     @investment = 0
        # else
        #     @investment = investment.to_f
        # end 
        FundingRound.all << self
    end

    def self.all
        @@all
    end

    def type=(type)
        @type = type
    end

    def investment=(investment) 
        if investment < 0 
            @investment = 0
        else
            @investment = investment.to_f
        end 
    end


end
