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
        if not (b ** (logarithm + 1)) > x:
            logarithm += 1
        else:
            break

    return logarithm


# 3
print(myLog(27, 3))
# 2
print(myLog(26, 3))
# 3
print(myLog(28, 3))
# 0
print(myLog(4, 16))
