# A semordnilap is a word or a phrase that spells a different word when
# backwards ("semordnilap" is a semordnilap of "palindromes").
# Here are some examples:
# nametag / gateman
# dog / god
# live / evil
# desserts / stressed
# Write a recursive program, semordnilap, that takes in two words and says if they are semordnilap.


def semordnilapWrapper(str1, str2):
    # A single-length string cannot be semordnilap
    if len(str1) == 1 or len(str2) == 1:
        return False

    # Equal strings cannot be semordnilap
    if str1 == str2:
        return False

    if len(str1) != len(str2):
        return False

    return semordnilap(str1, str2)


def semordnilap(str1, str2):
    if str1 == '' or str2 == '':
        return str1 == str2
    return str1[0] == str2[-1] and semordnilap(str1[1:], str2[:-1])


# Should be True
print(semordnilapWrapper('nametag', 'gateman'))
# Should be True
print(semordnilapWrapper('dog', 'god'))
# # Should be False
print(semordnilapWrapper('eggs', 'butt'))
# # Should be False
print(semordnilapWrapper('eggs', 'butts'))
