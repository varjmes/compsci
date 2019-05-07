import math


def f(x):
    # Provided by course
    return 10 * math.e ** (math.log(0.5) / 5.27 * x)


def radiationExposure(start, stop, step):
    '''
    Computes and returns the amount of radiation exposed
    to between the start and stop times. Calls the
    function f to obtain the value of the function at any point.

    start: integer, the time at which exposure begins
    stop: integer, the time at which exposure ends
    step: float, the width of each rectangle. You can assume that
      the step size will always partition the space evenly.

    returns: float, the amount of radiation exposed to
      between start and stop times.
    '''

    result = 0.0
    i = start
    while i < stop:
        result += f(i) * step
        i += step

    return result


# Should be: 39.10318784326239
print(radiationExposure(0, 5, 1))

# Should be: 22.94241041057671
print(radiationExposure(5, 11, 1))

# Should be: 62.0455982538
print(radiationExposure(0, 11, 1))

# Should be: 0.434612356115
print(radiationExposure(40, 100, 1.5))
