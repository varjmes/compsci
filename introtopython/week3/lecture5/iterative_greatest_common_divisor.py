# The greatest common divisor of two positive integers is the largest integer
# that divides each of them without remainder.
# Write an iterative function, gcdIter(a, b), that implements this idea. One
# easy way to do this is to begin with a test value equal to the smaller of the
# two input arguments, and iteratively reduce this test value by 1 until you
# either reach a case where the test divides both a and b without remainder,
# or you reach 1.


def gcdIter(a, b):
    '''
    a, b: positive integers

    returns: a positive integer, the greatest common divisor of a & b.
    '''
    divisor = min(a, b)
    while divisor > 0:
        if divisor == 1:
            break

        if (a % divisor == 0) and (b % divisor == 0):
            break

        divisor -= 1

    return divisor


# Greatest common divisor of 2 and 5 is 1
# gcdIter(2, 5) == 1
print(gcdIter(2, 5))

# Greatest common divisor of 6 and 18 is 6
# gcdIter(6, 18) == 6
print(gcdIter(6, 18))
