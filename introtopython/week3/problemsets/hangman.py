# 6.00 Problem Set 3
#
# Hangman game
#
# 1. Computer must choose a random word from words.txt
# 2. The game must be interactive
#    a) At game start: print how many letters the word contains
#    b) Ask the user to supply one guess (a single letter) per round
#    c) After each guess, tell user whether their letter apears in the word
#    d) After each round, display the partially guessed word so far and the
#       unguessed letters, as well as how many guesses are left
#    e) Make sure only a single character is entered
# 3. Game rules:
#    a) 8 guesses only
#    b) A guess is only lost when a guess is incorrect
#    c) If they've already guessed that letter, do not take away a guess but
#       inform the user they already used that letter
#    d) Game ends when there are no more guesses, or the word is constructed.
#    e) If guesses run out, reveal the secret word

# -----------------------------------
# loadWords and chooseWords functions, as well as word list provided by course.

import random
import string

WORDLIST_FILENAME = "words.txt"


def loadWords():
    '''
    Returns a list of valid words. Words are strings of lowercase letters.

    Depending on the size of the word list, this function may
    take a while to finish.
    '''
    print('Loading word list from file...')
    # inFile: file
    inFile = open(WORDLIST_FILENAME, 'r')
    # line: string
    line = inFile.readline()
    # wordlist: list of strings
    wordlist = line.split()
    print('  {} words loaded.'.format(len(wordlist)))
    return wordlist


def chooseWord(wordlist):
    '''
    wordlist (list): list of words (strings)

    Returns a word from wordlist at random
    '''
    return random.choice(wordlist)

# end of helper code
# -----------------------------------


# Load the list of words into the variable wordlist
# so that it can be accessed from anywhere in the program
wordlist = loadWords()


def isWordGuessed(secretWord, lettersGuessed):
    '''
    secretWord: string, the word the user is guessing
    lettersGuessed: list, what letters have been guessed so far
    returns: boolean, True if all the letters of secretWord are in lettersGuessed;
      False otherwise
    '''

    wordLetters = list(secretWord)
    return all(x in lettersGuessed for x in wordLetters)


def getGuessedWord(secretWord, lettersGuessed):
    '''
    secretWord: string, the word the user is guessing
    lettersGuessed: list, what letters have been guessed so far
    returns: string, comprised of letters and underscores that represents
      what letters in secretWord have been guessed so far.
    '''

    wordLetters = list(secretWord)
    for i in range(0, len(secretWord)):
        if wordLetters[i] not in lettersGuessed:
            wordLetters[i] = '_'

    return ''.join(wordLetters)


def getAvailableLetters(lettersGuessed):
    '''
    lettersGuessed: list, what letters have been guessed so far
    returns: string, comprised of letters that represents what letters have not
      yet been guessed.
    '''
    alphabet = string.ascii_lowercase
    for c in lettersGuessed:
        alphabet = alphabet.replace(c, '')
    return alphabet


def hangman(secretWord):
    '''
    secretWord: string, the secret word to guess.

    Starts up an interactive game of Hangman.

    * At the start of the game, let the user know how many
      letters the secretWord contains.

    * Ask the user to supply one guess (i.e. letter) per round.

    * The user should receive feedback immediately after each guess
      about whether their guess appears in the computers word.

    * After each round, you should also display to the user the
      partially guessed word so far, as well as letters that the
      user has not yet guessed.

    Follows the other limitations detailed in the problem write-up.
    '''

    lettersGuessed = []
    availableLetters = getAvailableLetters(lettersGuessed)
    guesses = 8
    guessed = False
    guessedWord = '_' * len(secretWord)

    print('Welcome to the game, Hangman!')
    print('I am thinking of a word that is {} letters long.'.format(len(secretWord)))
    print('-------------')

    while guesses > 0:
        if guessed:
            break

        print('You have {} guesses left.'.format(guesses))
        print('Available letters: {}'.format(availableLetters))
        guessedLetter = input('Please guess a letter: ').lower()

        if guessedLetter in lettersGuessed:
            print('Oops! You\'ve already guessed that letter: {}'.format(guessedWord))
        elif guessedLetter in secretWord:
            lettersGuessed.append(guessedLetter)
            guessedWord = getGuessedWord(secretWord, lettersGuessed)
            availableLetters = getAvailableLetters(lettersGuessed)
            print('Good guess: {}'.format(guessedWord))
        else:
            lettersGuessed.append(guessedLetter)
            availableLetters = getAvailableLetters(lettersGuessed)
            print('Oops! That letter is not in my word: {}'.format(guessedWord))
            guesses -= 1

        print('-------------')
        if guessedWord == secretWord:
            guessed = True

    if guessed:
        print('Congratulations, you won!')
    else:
        print('Sorry, you ran out of guesses. The word was "{}"'.format(secretWord))


secretWord = chooseWord(wordlist).lower()
hangman(secretWord)
