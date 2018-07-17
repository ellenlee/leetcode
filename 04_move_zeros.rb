# Move Zeroes

# Description:
# Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

# Solution 1
def move_zeroes(nums)
  i = 0
  num_of_zeroes = 0
  # Loop through the array of numbers
  while i < nums.size
    if nums[i] == 0
      nums.delete_at(i)
      num_of_zeroes += 1
    else
      i += 1
    end
  end

  # Add back the deleted zeroes at the end of the array
  num_of_zeroes.times do
    nums.push(0)
  end
  nums
end

# Solution 2
def move_zeroes(nums)
  # Count the array size
  num_of_zero = nums.count(0)
  # Delete all the zeroes in the array
  nums.delete(0)
  # Add back the number of deleted zeroes at the end of the array
  num_of_zero.times { nums << 0 }
end
