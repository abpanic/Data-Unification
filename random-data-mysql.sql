CREATE TABLE financial_data (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  date DATE NOT NULL,
  description VARCHAR(255) NOT NULL,
  category VARCHAR(50) NOT NULL,
  amount DECIMAL(10, 2) NOT NULL,
  account VARCHAR(50) NOT NULL,
  payment_method VARCHAR(50) NOT NULL,
  reference_number VARCHAR(50) NOT NULL
);

SET autocommit = 0;
START TRANSACTION;

-- Generate and insert 10000 rows of financial data
DELIMITER //
CREATE PROCEDURE generate_financial_data()
BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i <= 10000 DO
    -- Generate random date within the past year
    SET @date = DATE_SUB(NOW(), INTERVAL FLOOR(RAND() * 365) DAY);
    
    -- Generate random description
    SET @description = CONCAT('Transaction ', i);
    
    -- Select random category
    SET @category_options = 'Revenue,Expenses,Payroll';
    SET @category = SUBSTRING_INDEX(SUBSTRING_INDEX(@category_options, ',', FLOOR(RAND() * (LENGTH(@category_options) - LENGTH(REPLACE(@category_options, ',', ''))) + 1)), ',', -1);
    
    -- Generate random amount between 0 and 10,000
    SET @amount = ROUND(RAND() * 10000, 2);
    
    -- Select random account
    SET @account = CONCAT('Account ', FLOOR(RAND() * 5) + 1);
    
    -- Select random payment method
    SET @payment_method_options = 'Cash,Check,Credit Card';
    SET @payment_method = SUBSTRING_INDEX(SUBSTRING_INDEX(@payment_method_options, ',', FLOOR(RAND() * (LENGTH(@payment_method_options) - LENGTH(REPLACE(@payment_method_options, ',', ''))) + 1)), ',', -1);
    
    -- Generate random reference number
    SET @reference_number = CONCAT('REF-', FLOOR(RAND() * 90000) + 10000);
    
    -- Insert data row into table
    INSERT INTO financial_data (date, description, category, amount, account, payment_method, reference_number)
    VALUES (@date, @description, @category, @amount, @account, @payment_method, @reference_number);
    
    SET i = i + 1;
  END WHILE;
END //
DELIMITER ;

CALL generate_financial_data();

COMMIT;
