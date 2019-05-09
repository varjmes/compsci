def myLog(x, b):
    '''
    Compute the logarithm of x, relative to b.
    The logarithm will be an int representing the power to which the base must be raised to, to produce x.
    x: positive int
    b: positive int >= 2
    returns: the logarithm, an int.

    Example: myLog(15, 3) = 2, as 3**2 is the largest power of 3 that doesn't exceed x.
    Example: myLog(16, 2) = 4, as 2**4 is 16.
    '''

    logarithm = 0

    while (b ** logarithm) <= x:
        if (b ** logarithm) == x:
            return logarithm
        else:
            logarithm += 1

    return logarithm
