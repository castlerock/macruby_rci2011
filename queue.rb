m = Dispatch::Queue.main
g = Dispatch::Queue.concurrent
p = Dispatch::Queue.new('in.co.crri.gcd.serial')

group = Dispatch::Group.new

#5.times do 
#  m.async {sleep(2); puts "Running on the Main Queue"} 
#  p.async {sleep(2); puts "Running on the Private Queue"}
#  g.async {sleep(2); puts "Running on the Global Queue"}
#end

1000.times do
  m.async {sleep(0.5); puts "«M»"} 
  p.async {sleep(0.5); puts "«P»"}
  g.async {sleep(1.0); puts "«G»"}
end

NSRunLoop.currentRunLoop.runUntilDate(NSDate.dateWithTimeIntervalSinceNow(12.0))
