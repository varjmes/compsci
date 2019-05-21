# Write a generator, genPrimes, that returns the sequence of prime numbers on
# successive calls to its next() method: 2, 3, 5, 7, 1
# Have the generator keep a list of the primes it's generated.
# A candidate number x is prime if (x % p) != 0 for all earlier primes p


def genPrimes():
    primes = set()
    prime = 2
    while True:
        if all(prime % i for i in primes):  # note no []
            primes.add(prime)
            yield prime
        prime += 1
