module BookKeeping
  VERSION = 2
end

class Robot
  attr_accessor :name
  
  def initialize
    @name = ""
    @name << (0...2).map { ('a'..'z').to_a[rand(26)] }.join.upcase
    @name << (0...3).map { ( 0 .. 9).to_a[rand(10)] }.join
  end
  
  def reset
    self.name = Robot.new.name
  end
end