# Write a recursive function recurPower(base, exp) that calculates the
# exponential (base ** exponent) by recursively calling itself to solve a
# smaller version of the same problem, and then multiplying the result by base
# to solve the initial problem.


def recursivePower(base, exp):
    '''
    base: int or float.
    exp: int >= 0

    returns: int or float, base^exp
    '''
    if exp <= 0:
        return 1

    result = base
    if exp > 1:
        result *= recursivePower(base, exp - 1)

    return result


# 2 ** 5 == 32
# recursivePower(2, 5) == 32
print(recursivePower(2, 5))

# 2 ** 0 == 1
# recursivePower(2, 0) == 1
print(recursivePower(2, 0))
