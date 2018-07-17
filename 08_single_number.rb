# Single Number

# Description:
# Given an array of integers, every element appears twice except for one. Find that single one.˙

def single_number(nums)
  # Test boundary condition
  return nums[0] if nums.length == 1
  sorted = nums.sort

  # To find duplicates that appear twice only
  for i in 0..(sorted.length-1) do
    if sorted[i] != sorted[i-1] && sorted[i] != sorted[i+1]
        result = sorted[i]
    end
  end
  result
end
