# Write a program that counts up the number of vowels contained in the string 's'
vowels = ['a', 'e', 'i', 'o', 'u']
count = 0
s = 'a string of vowels'

for char in s:
    if char in vowels:
        count += 1

print('Number of vowels: {}'.format(count))
