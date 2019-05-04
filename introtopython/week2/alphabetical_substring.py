# Write a program that prints the longest substring of s in which the letters occur in alphabetical order.
# For example, if s = 'azcbobobegghakl', then your program should print
# > Longest substring in alphabetical order is: beggh
# In the case of ties, print the first substring.
# For example, if s = 'abcbcd', then your program should print
# > Longest substring in alphabetical order is: abc

# NB: Bad mood, cheated

s = 'abcgx'
s1 = 'abcdef'
s2 = 'anda'
s3 = 'abcxdef'
longest = ''
current = ''

for char in s3:
  if current != '':
    if char >= current[-1]:
      current += char
      if len(longest) < len(current):
        longest = current
    else:
      current = char
  else:
    current = char

print('Longest substring in alphabetical order is: {}'.format(longest))
