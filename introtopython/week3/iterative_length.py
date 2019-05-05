# Write an iterative function, lenIter, which computes the length of an input
# argument (a string), by counting up the number of characters in the string.


def lenIter(string):
    '''
    string: a string
    returns: int, the length of string.
    '''

    if type(string) is not str:
        return 'not a string'

    total = 0
    for _ in string:
        total += 1
    return total


print(lenIter('eggs eggs, all i want is eggs eggs eggs'))
