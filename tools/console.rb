require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#

# # # 

startup1 = Startup.new("Name", "Domain", "Founder")

vc1 = VentureCapitalist.new("Name1", 1000000001)
vc2 = VentureCapitalist.new("Name2", 1001)
vc3 = VentureCapitalist.new("Name3", 1000000002)

fr1 = FundingRound.new(startup1, vc3, "Angel", 9)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line