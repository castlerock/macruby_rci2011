class SimpleBlockOperation < NSOperation
  attr_accessor :block
  
  def initWithBlock(blk)
    self.init
    @block = blk
    self 
  end
  
  
  def main
    @block.call()
    puts 'Done running this'
  end


end

queue = NSOperationQueue.mainQueue
queue.addOperation SimpleBlockOperation.alloc.initWithBlock lambda{ puts "HI" }
NSRunLoop.currentRunLoop.runUntilDate(NSDate.dateWithTimeIntervalSinceNow(1.0))
