# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	arr.reduce(0,:+)
end

def max_2_sum arr
	if(arr.size != 0)
    	arr.max(2).reduce(:+)
    else
    	return 0
    end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
	arr.each do |a|
		arraySub = arr - [a]
  		arraySub.each do |b|
  			if(a+b == n)
  				return true
  			end
		end
	end
	return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if(s.length != 0)
  	if(/[qwrtypsdfghjklzxcvbnm]/.match(s[0].downcase) != nil)
  		return true
  	else
  		return false
  	end
	end
end
def binary_multiple_of_4? s #1010c
  # YOUR CODE HERE
  if(/^[01]/.match(s) != nil)
  	binary = s.to_i(2)
  	if(binary% 4 == 0)
  		return true
  	end
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
	attr_accessor:isbn,:price
	attr_writer:isbn, :price

	def initialize isbn,price
		raise ArgumentError if isbn.empty? || price <=0
	@isbn = isbn
	@price = price
	end

	def price_as_string
		format("$%.2f",@price)
	end
end
