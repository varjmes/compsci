# Write a procedure, called biggest, which returns the key corresponding to the
# entry with the largest number of values associated with it. If there is more
# than one such entry, return any one of the matching keys.
# { 'a': ['aardvark'], 'b': ['baboon'], 'c': ['coati'], 'd': ['donkey', 'dog', 'dingo']}
# has 6 values


def biggest(aDict):
    '''
    aDict: A dictionary, where all the values are lists.

    returns: The key with the largest number of values associated with it
    '''

    if len(aDict) == 0:
        return None

    return max(aDict.keys(), key=lambda x: len(aDict[x]))


# Should return: 'b'
print(biggest({'a': ['aardvark'], 'b': ['baboon', 'b', 'b', 'b', 'b'],
               'c': ['coati'], 'd': ['donkey', 'dog', 'dingo']}))
