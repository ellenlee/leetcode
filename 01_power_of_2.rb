# Power of two

# Description:
# Given an integer, write a function to determine if it is a power of two.

def is_power_of_two(n)
	# Test boundary conditions
	if n == 1
		return true
	elsif	n <= 0 || n % 2 != 0
		return false

	else
		# Divide the number by 2 continuous while the remainder is equal to zero
		while ( n % 2 == 0 )
			n /= 2
		end
		# Test the remainder
		if n == 1
			return true
		else
			return false
		end
	end
end

puts is_power_of_two(0) # should return false.
puts is_power_of_two(1) # should return true.
puts is_power_of_two(-3) # should return false.
puts is_power_of_two(16) # should return true.
