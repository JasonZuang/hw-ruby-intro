#!/usr/bin/ruby -w
class Greeter
	def initialize(name = "John")
		@name = name
	end
	def say_hi
		puts "hi #{@name}"
	end
end

g = Greeter.new("asd")
g.say_hi