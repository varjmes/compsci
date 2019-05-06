# Write a procedure, called howMany, which returns the sum of the number of
# values associated with a dictionary
# { 'a': ['aardvark'], 'b': ['baboon'], 'c': ['coati'], 'd': ['donkey', 'dog', 'dingo']}
# has 6 values


def howMany(aDict):
    '''
    aDict: A dictionary, where all the values are lists.
    returns: int, how many values are in the dictionary.
    '''

    values = 0
    for key in aDict.keys():
        values += len(aDict[key])

    return values


# Should return: 6
print(howMany({'a': ['aardvark'], 'b': ['baboon'],
               'c': ['coati'], 'd': ['donkey', 'dog', 'dingo']}))
