# This code raises a ZeroDivisionError exception for the following call:
# FancyDivide([0, 2, 4], 0)
# change the definition of SimpleDivide so that the call does not raise an
# exception. When dividing by 0, FancyDivide should return a list with all 0
# elements


def FancyDivide(list_of_numbers, index):
    denom = list_of_numbers[index]
    return [simple_divide(item, denom)
            for item in list_of_numbers]


def simple_divide(item, denom):
    try:
        return item / denom
    except ZeroDivisionError:
        return 0


# Should return: [0, 0, 0]
print(FancyDivide([0, 2, 4], 0))
