# Ugly Number

# Description:
# Write a program to check whether a given number is an ugly number.
# Ugly numbers are positive numbers whose prime factors only include 2, 3, 5. For example, 6, 8 are ugly while 14 is not ugly since it includes another prime factor 7.
# Note that 1 is typically treated as an ugly number.

def is_ugly(num)
  # Test boundary conditions
  return false if num <= 0
  return true if num == 1

  # Repeatly divide the remainder by 2, 3 and 5 until remainder is not equal to zero
  while num % 2 == 0
    num /= 2
  end
  while num % 3 == 0
    num /= 3
  end
  while num % 5 == 0
    num /= 5
  end

  # Test for ugly number
  if num == 1
    return true
  else
    return false
  end
end

puts is_ugly(1) # true
puts is_ugly(5) # true
puts is_ugly(12) # true
puts is_ugly(13) # false
puts is_ugly(937351770) # false
puts is_ugly(-2147483648) # false
