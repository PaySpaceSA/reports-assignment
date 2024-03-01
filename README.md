# Instructions:

Using the provided setup.sql file and the scenario outlined below, please provide answers to each question in single sql file share it with TA Specialist you are working with via a Google Drive / similar link

## Scenario: 

Each company has several employees.

Each Employee has a salary, associated to a tax rate.

Each Employee has one, or more position records.

Each Employee can have an address.

## Questions:

1. Please add a relationship between table Employee and table Address.

2. Please write a statement that would return the Tax Percentage of each employee, per company.

3. Please write a statement to create a Temporary Table that would house an employees full name, salary and tax percentage, and subsequently populate it with a statement.

4. Please write a statement that returns the employee with the highest salary, per company.

5. Please write a statement that returns the average salary of employees, per company.

6. Please write a statement that returns the total number of positions, grouped by company.

7. Please write a statement that returns all employees that are male, with a salary of over 31000 and who are over 25 years of age.

8. Please write a statement that returns employees that have a tax rate of over 20%, per company.

9. Please improve, or optimise the below statement:
   
    SELECT DISTINCT * 
    FROM  
      (SELECT * FROM (SELECT * FROM Employee WHERE DateOfBirth > '1990-01-15') WHERE Gender = 'Male') 
    WHERE Nationality Like '%South African%'

11. Using the tables provided, please create a stored procedure, to return the following information, as detailed below:
    
    Parameters
    - CompanyName
    - EmployeeName

    The user needs to be able to specify company name or employee number.
    > Should the user specify company name, all employees information linked to the company must return
    
    > Should the user specify employee number, only said employee information should return

    Fields to return
    -  Company Name
    -  Employee Name, Emp Number
    -  Salary
    -  Tax Percentage
    -  Number of Male and Female records per company
    -  Latest position name
    -  Order data by Employee DateOfBirth in descending order

11. Explain what an Index is, and provide an example using the Employee Table. (this question can be answered as a comment section in your sql file)
