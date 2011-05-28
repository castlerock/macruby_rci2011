begin
  #File.new("/tmp/you-bet.txt", "w").close
  #Sandbox.temporary_writes.apply!         
  Sandbox.no_writes.apply!              
  
  #File.new("/no-way.txt", "w"). close
  
  File.new("/tmp/no-way.txt", "w"). close
rescue SystemCallError => ex
  puts ex.class
  puts ex.message
end
