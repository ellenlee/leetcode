# Contains Duplicate

# Description:
# Given an array of integers, find if the array contains any duplicates.
# Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.

def contains_duplicate(nums)
	result = false

	# Test boundary conditions
	if nums.length == 1
		return result
  end

  # Sort the numbers
	sorted = nums.sort

	# Test each num in the array for duplicates
	for i in 0..sorted.length-2 do

		if sorted[i] == sorted[i+1]
			result = true
			return result
		end
	end

  result
end

puts contains_duplicate( [ ] ) # should return false.
puts contains_duplicate( [ 1 ] ) # should return false.
puts contains_duplicate( [1,2,3,4,3] ) # should return true.
