# Write an iterative function iterPower(base, exp) that calculates the
# exponential (base ** exponent) by simply using successive multiplication.
# For example, iterPower(base, exp) should compute (base ** exponent) by
# multiplying base times itself, exp times.


def iterativePower(base, exp):
    '''
    base: int or float.
    exp: int >= 0

    returns: int or float, base^exp
    '''
    if exp <= 0:
        return 1

    result = base
    for _ in range(1, exp):
        result *= base
    return result


# 2 ** 5 == 32
# iterativePower(2, 5) == 32
print(iterativePower(2, 5))

# 2 ** 0 == 1
# iterativePower(2, 0) == 1
print(iterativePower(2, 0))
