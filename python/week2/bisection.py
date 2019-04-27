low = 0
high = 100
guess = 0
guessed = False
instruction = ''

print("Please think of a number between 0 and 100! ")

while not guessed:
  guess = int((low + high) / 2)
  print("Is your secret number " + str(guess) + "?")

  instruction = input("Enter 'h' to indicate the guess is too high. Enter 'l' to indicate the guess is too low. Enter 'c' to indicate I guessed correctly. ")

  if instruction == 'h':
    high = guess
  elif instruction == 'l':
    low = guess
  elif instruction == 'c':
    guessed = True
  else:
    print("Sorry, I did not understand your input.")

print("Game over. Your secret number was: " + str(guess))
