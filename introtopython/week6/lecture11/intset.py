class intSet(object):
    """An intSet is a set of integers
    The value is represented by a list of ints, self.vals.
    Each int in the set occurs in self.vals exactly once."""

    def __init__(self):
        """Create an empty set of integers"""
        self.vals = []

    def insert(self, e):
        """Assumes e is an integer and inserts e into self"""
        if not e in self.vals:
            self.vals.append(e)

    def member(self, e):
        """Assumes e is an integer
           Returns True if e is in self, and False otherwise"""
        return e in self.vals

    def remove(self, e):
        """Assumes e is an integer and removes e from self
           Raises ValueError if e is not in self"""
        try:
            self.vals.remove(e)
        except:
            raise ValueError(str(e) + ' not found')

    def __str__(self):
        """Returns a string representation of self"""
        self.vals.sort()
        return '{' + ','.join([str(e) for e in self.vals]) + '}'

    # Task: Define an intersect method that returns a new intSet containing elements that appear in both sets
    # s1.intersect(s2)
    def intersect(self, set2):
        '''
        Returns a new intSet of integers that appear in both s1 and s2.
        Return an empty set if s1 and s2 share no elements 
        '''
        newSet = intSet()

        for val in self.vals:
            if val in set2.vals:
                newSet.insert(val)

        return newSet

    # Task: Add the appropriate method(s) so that len(s) returns the number of elements in s.
    def __len__(self):
        '''
        Returns the length of the set.
        '''
        count = 0
        for _ in self.vals:
            count += 1

        return count
