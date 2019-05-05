# Write a recursive function, lenIter, which computes the length of an input
# argument (a string), by counting up the number of characters in the string.


def lenRecur(string):
    '''
    string: a string
    returns: int, the length of string.
    '''

    if type(string) is not str:
        return 'not a string'

    if string:
        return 1 + lenRecur(string[0:-1])
    else:
        return 0


print(lenRecur('eggs eggs, all i want is eggs eggs eggs'))
