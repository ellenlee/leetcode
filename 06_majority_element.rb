# Majority Element

# Description:
# Given an array of size n, find the majority element. The majority element is the element that appears more than "n/2" times.
#You may assume that the array is non-empty and the majority element always exist in the array.

# Solution1
def majority_element(nums)
  h = (nums.size.to_f / 2).ceil
  sorted = nums.sort
  return sorted[h]
end

# Solution2
def majority_element(nums)
  h = nums.size / 2
  sorted = nums.sort.uniq
  for i in 0..(sorted.length-1) do
    return sorted[i] if nums.count(sorted[i]) > (h)
  end
end

# Solution3
def majority_element(nums)
  return nums[0] if nums.size == 1
  h = (nums.size / 2).ceil
  sorted = nums.sort
  return sorted[h]
end
