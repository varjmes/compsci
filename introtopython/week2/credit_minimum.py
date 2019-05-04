# Write a program to calculate the credit balance after 1 year if we only
# pay the minimum monthly required.
# Make sure to take monthly interest into account.

ANNUAL_INTEREST_RATE = 0.2
MONTHS = 12
MONTHLY_PAYMENT_RATE = 0.04
MONTHLY_INTEREST_RATE = ANNUAL_INTEREST_RATE / MONTHS

balance = 4842
total = 0
for month in range(0, MONTHS):
  minimum_monthly_payment = MONTHLY_PAYMENT_RATE * balance
  monthly_unpaid_balance = balance - minimum_monthly_payment
  total += minimum_monthly_payment
  balance = monthly_unpaid_balance + (MONTHLY_INTEREST_RATE * monthly_unpaid_balance)

  print('Month: {}'.format(month + 1))
  print('Minimum monthly payment: {}'.format(round(minimum_monthly_payment, 2)))
  print('Remaining balance: {}'.format(round(balance, 2)))

print('Total paid: {}'.format(round(total, 2)))
print('Remaining balance: {}'.format(round(balance, 2)))
