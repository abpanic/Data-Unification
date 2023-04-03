import pandas as pd
import random
from datetime import datetime, timedelta

# Create a list of category options
category_options = ['Revenue', 'Expenses', 'Payroll']

# Create an empty list to store the data
data = []

# Generate 1000 rows of data
for i in range(1000):
    # Generate random date within the past year
    date = datetime.now() - timedelta(days=random.randint(0, 365))
    
    # Generate random description
    description = f'Transaction {i}'
    
    # Select random category
    category = random.choice(category_options)
    
    # Generate random amount between 0 and 10,000
    amount = round(random.uniform(0, 10000), 2)
    
    # Select random account
    account = f'Account {random.randint(1, 5)}'
    
    # Select random payment method
    payment_method_options = ['Cash', 'Check', 'Credit Card']
    payment_method = random.choice(payment_method_options)
    
    # Generate random reference number
    reference_number = f'REF-{random.randint(10000, 99999)}'
    
    # Add data row to the list
    data.append([date, description, category, amount, account, payment_method, reference_number])

# Create a pandas DataFrame from the data
df = pd.DataFrame(data, columns=['Date', 'Description', 'Category', 'Amount', 'Account', 'Payment Method', 'Reference Number'])

# Export the DataFrame to an Excel file
df.to_excel('financial_data.xlsx', index=False)
