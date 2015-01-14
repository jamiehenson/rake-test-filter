#!/usr/bin/env ruby
rake = $stdin.read
rakeout = ""
rake.each_line do |line|
  rakeout << "\e[0;35m" + line + "\e[0;30m" if line.include? "ERROR"
  rakeout << "\e[0;34m" + line + "\e[0;30m" if line.include? "FAIL"
end

puts "\e[0;33mRake errors:\e[0;30m"
print rakeout