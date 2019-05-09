def laceStrings(s1, s2):
    '''
    s1 and s2 are strings.

    Returns a new str with elements of s1 and s2 interlaced,
    beginning with s1. If strings are not of same length,
    then the extra elements should appear at the end.
    '''

    laced = ''
    start = 0
    longest = max(len(s1), len(s2))
    while start <= longest + 1:
        try:
            laced += s1[start]
        except IndexError:
            pass

        try:
            laced += s2[start]
        except IndexError:
            pass

        start += 1

    return laced
