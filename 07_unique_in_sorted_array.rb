# Remove Duplicates from Sorted Array

# Description:
# Given a sorted array, remove the duplicates in place such that each element appears only once and return the new length.
# Do not allocate extra space for another array, you must do this in place with constant memory.

def unique_in_order(iterable)
  # Check for the class type of input
  iterable.class == Array ? result = iterable : result = iterable.split("")
  uniq_arr = []

  # Loop through the input array and test for duplicates
  for i in 0..(result.length-1) do
    if result[i] != result[i+1]
    uniq_arr << result[i]
    end
  end
  uniq_arr
end
