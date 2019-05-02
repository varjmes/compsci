# Write a program that calculates the minimum fixed monthly payment needed in order to
# pay off a credit card balance within 12 months.
# Use bisection search to get an accurate/exact fixed monthly payment unlike credit_year.py

BALANCE = 320000
ANNUAL_INTEREST_RATE = 0.2
MONTHS = 12
MONTHLY_INTEREST_RATE = ANNUAL_INTEREST_RATE / MONTHS
EPSILON = 0.03

payment_lower_bound = BALANCE / MONTHS
payment_higher_bound = (BALANCE * (1 + MONTHLY_INTEREST_RATE) ** 12) / 12
while BALANCE > EPSILON:
  lowest_payment = (payment_lower_bound + payment_higher_bound) / 2
  account_balance = BALANCE

  for i in range(12):
    monthly_unpaid_balance = account_balance - lowest_payment
    account_balance = monthly_unpaid_balance + \
        (MONTHLY_INTEREST_RATE * monthly_unpaid_balance)

  if account_balance > EPSILON:
    payment_lower_bound = lowest_payment
  elif account_balance < -EPSILON:
    payment_higher_bound = lowest_payment
  else:
    break

print('Lowest payment: {}'.format(round(lowest_payment, 2)))