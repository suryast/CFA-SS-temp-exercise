class ProgressBar
    def initialize (start,finish)
      @start = start
      @finish = finish
      @status = "Progress"
    end

    def addone
      @start = @start + 1
    end

    attr_accessor :start
    attr_accessor :finish
    attr_accessor :status
end

class Day
    def initialize(emptyhashmap)
      @emptyhashmap = emptyhashmap
    end
    attr_accessor :emptyhashmap
end

#initialize
bar = ProgressBar.new(0,7)
#day = Day.new(["Mon", "Tue","Wed","Thu","Fri","Sat","Sun"])
dayhash = {"Mon" => "", "Tue" => "", "Wed" => "", "Thu" => "", "Fri" => "", "Sat" => "", "Sun" => ""}
day = Day.new(dayhash)

#loop
bar.finish.times do

#question here
system "clear"
puts "#{bar.status} (#{bar.start+1}/#{bar.finish})"
puts "What is the temperature on #{day.emptyhashmap.keys[bar.start]}?" #how to check if it is not number

#prompt for answer
temperature = gets.chomp.to_i
day.emptyhashmap[day.emptyhashmap.keys[bar.start]] = temperature

#counter ++
bar.addone
puts "Stored data #{day.emptyhashmap}"
end
