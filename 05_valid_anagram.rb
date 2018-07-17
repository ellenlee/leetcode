# Valid Anagram

# Description:
# Given two strings s and t, write a function to determine if t is an anagram of s.
# Note: You may assume the string contains only lower case alphabets.

# Solution1
def is_anagram(s, t)
  # Test boundary condition
  if s.length != t.length
    return false
  else
    sorted_s = s.split("").sort
    sorted_t = t.split("").sort
    if sorted_s == sorted_t
      return true
    else
      return false
    end
  end
end

# Solution2
def is_anagram(s, t)
  return false if s.length != t.length
  sorted_s = s.split("").sort
  sorted_t = t.split("").sort
  sorted_s == sorted_t ? true : false
end

# Solution3
def is_anagram(s, t)
    s.chars.sort == t.chars.sort
end
