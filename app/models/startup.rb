class Startup
    @@all = []
    attr_accessor :name, :domain
    attr_reader :founder

    def initialize(name, domain, founder)
        @name = name
        @domain = domain
        @founder = founder 
        Startup.all << self 
    end

    def self.all
        @@all 
    end

    def pivot(domain, name)
        @domain = domain
        @name = name 
    end

    def self.find_by_founder(founder_name)
        x = Startup.all.find do |startup|
            startup.founder == founder_name
        end
        x
    end

    def self.domains
        Startup.all.map do |startup|
            startup.domain 
        end
    end

    def sign_contract(vc, type, investment)
        FundingRound.new(self, vc, type, investment)
    end

end
