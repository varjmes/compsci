# Write a program that calculates the minimum fixed monthly payment needed in order to
# pay off a credit card balance within 12 months

BALANCE = 3926
ANNUAL_INTEREST_RATE = 0.02
MONTHS = 12
MONTHLY_INTEREST_RATE = ANNUAL_INTEREST_RATE / MONTHS

lowest_payment = 10
paid = 0
months = 1
account_balance = 3926

while paid <= BALANCE:
  if months == 12:
    lowest_payment += 10
    paid = 0
    account_balance = 3926
    months = 1

  months += 1
  monthly_unpaid_balance = account_balance - lowest_payment
  paid += lowest_payment
  account_balance = monthly_unpaid_balance + \
    (MONTHLY_INTEREST_RATE * monthly_unpaid_balance)

print('Remaining balance: {}'.format(account_balance))
print('Lowest payment: {}'.format(lowest_payment))
print('Months: {}'.format(months))
