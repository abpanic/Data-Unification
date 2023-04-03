-- to be run in MS SQL
CREATE TABLE financial_data (
  id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  date DATE NOT NULL,
  description VARCHAR(255) NOT NULL,
  category VARCHAR(50) NOT NULL,
  amount DECIMAL(10, 2) NOT NULL,
  account VARCHAR(50) NOT NULL,
  payment_method VARCHAR(50) NOT NULL,
  reference_number VARCHAR(50) NOT NULL
);

BEGIN TRANSACTION;

-- Generate and insert 100000 rows of financial data
DECLARE @i INT = 1;
WHILE @i <= 100000
BEGIN
  -- Generate random date within the past year
  DECLARE @date DATE = DATEADD(DAY, -FLOOR(RAND() * 365), GETDATE());
    
  -- Generate random description
  DECLARE @description VARCHAR(255) = CONCAT('Transaction ', @i);
    
  -- Select random category
  DECLARE @category_options VARCHAR(50) = 'Revenue,Expenses,Payroll';
  DECLARE @category VARCHAR(50) = PARSENAME(REPLACE(@category_options, ',', '.'), FLOOR(RAND() * (LEN(@category_options) - LEN(REPLACE(@category_options, ',', ''))) + 1));
    
  -- Generate random amount between 0 and 10,000
  DECLARE @amount DECIMAL(10, 2) = ROUND(RAND() * 10000, 2);
    
  -- Select random account
  DECLARE @account VARCHAR(50) = CONCAT('Account ', FLOOR(RAND() * 5) + 1);
    
  -- Select random payment method
  DECLARE @payment_method_options VARCHAR(50) = 'Cash,Check,Credit Card';
  DECLARE @payment_method VARCHAR(50) = PARSENAME(REPLACE(@payment_method_options, ',', '.'), FLOOR(RAND() * (LEN(@payment_method_options) - LEN(REPLACE(@payment_method_options, ',', ''))) + 1));
    
  -- Generate random reference number
  DECLARE @reference_number VARCHAR(50) = CONCAT('REF-', FLOOR(RAND() * 90000) + 10000);
    
  -- Insert data row into table
  INSERT INTO financial_data (date, description, category, amount, account, payment_method, reference_number)
  VALUES (@date, @description, @category, @amount, @account, @payment_method, @reference_number);
    
  SET @i = @i + 1;
END;

COMMIT TRANSACTION;
