# Write a procedure called oddTuples, which takes a tuple as input, and returns
# a new tuple as output, where every other element of the input tuple is copied,
# starting with the first one. So if test is the tuple
# ('I', 'am', 'a', 'test', 'tuple'), then evaluating oddTuples on this input
# would return the tuple ('I', 'a', 'tuple').


def oddTuples(tuple):
    '''
    Return a tuple containing every other element of the given tuple
    '''

    oddTuple = ()
    for i in range(0, len(tuple)):
        if i % 2 == 0:
            oddTuple = oddTuple + (tuple[i],)

    return oddTuple

    # Can be done in one line with
    # return tuple[::2]


# Should return: ('I', 'a', 'tuple').
print(oddTuples(('I', 'am', 'a', 'test', 'tuple')))
