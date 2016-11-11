module BookKeeping
  VERSION = 2
end

class Robot
  attr_accessor :name
  
  @@used_names = []
  
  def initialize
    @name = name_generator
  end
  
  def name_generator
    name = ""
    name << (0...2).map { ('a'..'z').to_a[rand(26)] }.join.upcase
    name << (0...3).map { ( 0 .. 9).to_a[rand(10)] }.join
    if @@used_names.include?(name)
      name_generator
    else
      @@used_names << name
      name
    end
  end
  
  def reset
    @@used_names.delete(self.name)
    self.name = Robot.new.name
  end
end