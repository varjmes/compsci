# Determine if a character is within a string, with the power of bisection search.
# Make sure to sort the string in alphabetical order first.
# Test the middle character first against the input, if not the same
# If test char smaller, consider lower half of string
# If test char is larger, consider upper half of string
# Implement the idea recursively
# Return boolean value


def isIn(char, string):
    '''
    Determine if the character is within the string.
    char: a single letter
    string: an alphabetized string
    '''
    if not char or not string:
        return False
    if len(string) == 1:
        return string == char

    midIndex = int(len(string) / 2)
    midChar = string[midIndex]
    if char == midChar:
        return True
    if char > midChar:
        return isIn(char, string[midIndex:])
    if char < midChar:
        return isIn(char, string[:midIndex])


# Should be True
print(isIn('a', 'abcdef'))
# Should be True
print(isIn('i', 'defghi'))
# Should be True
print(isIn('f', 'defghi'))
# Should be False
print(isIn('x', 'abcdef'))
# Should be False
print(isIn('', 'abcdef'))
# Should be False
print(isIn('a', 'bcdef'))
