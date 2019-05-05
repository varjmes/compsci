# Write a recursive function that calculates the exponential (base ** exponent)
# by recursively calling itself. Use multiplication and remainder where:
# base ** exp = (base**2)^exp/2 if exp > 0 and exp is even
# base ** exp = base * base ^ exp-1 if exp > 0 and exp is odd
# base ** exp = 1 if exp = 0


def recursivePowerModular(base, exp):
    '''
    base: int or float.
    exp: int >= 0

    returns: int or float; base^exp
    '''

    if exp <= 0:
        return 1

    result = 0
    if exp > 0 and (exp % 2 == 0):
        result += recursivePowerModular(base * base, exp / 2)

    if exp > 0 and (exp % 2 != 0):
        result += base * recursivePowerModular(base, exp - 1)

    return result


# 2 ** 5 == 32
# recursivePowerModular(2, 5) == 32
print(recursivePowerModular(2, 5))

# 2 ** 2 == 4
# recursivePowerModular(2, 2) == 4
print(recursivePowerModular(2, 2))
