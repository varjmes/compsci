# The greatest common divisor of two positive integers is the largest integer
# that divides each of them without remainder.
# Write a recursive function, gcdRecur(a, b), that implements this idea.
# The Euclidean Algorithm makes it easy to find greatest common divisors.
# Suppose that a and b are two positive integers:
# If b = 0, then the answer is a
# Otherwise, gcd(a, b) is the same as gcd(b, a % b)


def gcdRecur(a, b):
    '''
    a, b: positive integers

    returns: a positive integer, the greatest common divisor of a & b.
    '''
    if b == 0:
        return a

    return gcdRecur(b, a % b)


# Greatest common divisor of 2 and 5 is 1
# gcdRecur(2, 5) == 1
print(gcdRecur(2, 5))

# Greatest common divisor of 6 and 18 is 6
# gcdRecur(6, 18) == 6
print(gcdRecur(6, 18))
