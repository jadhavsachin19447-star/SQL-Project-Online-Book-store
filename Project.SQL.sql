-- Create Database
Create Database onlinebookstore;

-- Switch to the database
\c OnlineBookstore;

-- Create  tables

DROP TABLE IF EXISTS Books;
CREATE TABLE Books(
    Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR (100),
    Author VARCHAR (100),
    Genre VARCHAR (50),
    Published_Year INT,
    Price NUMERIC(10,2),
    Stock INT
);

DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers(
    Customer_ID SERIAL PRIMARY KEY,
    Name VARCHAR (100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50),
    Country VARCHAR(150)
);

DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders(
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT,
    Total_Amount NUMERIC(10,2)
);

SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;

-- Import Data Into Books Table
COPY Books(Book_ID,Title,Author,Genre,Published_Year,Price,Stock)
FROM 'C:\My Project File.2026\Practice Files SQL Projects\Practice Files SQL Projects\Books.csv'
CSV HEADER;

-- Import Data Into Customers table
COPY Customers(Customer_ID,Name,Email,Phone,City,Country)
FROM 'C:\My Project File.2026\Practice Files SQL Projects\Practice Files SQL Projects\Customers.csv'
CSV HEADER;

-- Import Data Into Orders table
COPY Orders(Order_ID,Customer_ID,Book_ID,Order_Date,Quantity,Total_Amount)
FROM 'C:\My Project File.2026\Practice Files SQL Projects\Practice Files SQL Projects\Orders.csv'
CSV HEADER;

-- 1] Retrieve all books in the "Fiction" genre:

SELECT * FROM Books
WHERE genre = 'Fiction';

--2] Find Books Puplished After The Year 1950:

SELECT * FROM Books
WHERE published_year>1950;

--3]Show List All Customers From the Canada:

SELECT * FROM Customers
WHERE country ='Canada';

-- 4] Show Orders Placed In November 2023

SELECT * FROM Orders
WHERE Order_date between '2023-11-01' And '2023-11-30';

--5] Retrieve The total Stock Of Books Available:

SELECT SUM(stock) as Total_Stock
FROM Books;

--6] Find The Details Of the Most Expensive Book:
SELECT * FROM Books
ORDER BY PRICE DESC LIMIT 1  ;

--7] Show All Customers Who ordered More Then 1 Quantity of A Book:
SELECT * FROM Orders
WHERE quantity>1;

--8] Retrieve All Orders Where The Total Amount Exceeds $20:
SELECT * FROM Orders 
WHERE Total_Amount>20;

--9] List All Genre Available In The Books Table:
SELECT DISTINCT Genre FROM Books;

--10] Find The Book With The Lowest Stock:
SELECT * FROM Books 
ORDER BY Stock asc LIMIT 1;

--11] Calculate The Total Revanue Generated From All Orders:
SELECT SUM(Total_Amount)as Total_Revenue FROM Orders;

-- Advance Questions:

--1] Retrieve The Total Number Of Books Sold For Each Genre:
SELECT B.GENRE, SUM(O.QUANTITY) AS TOTAL_BOOKS_SOLD
FROM ORDERS O
JOIN BOOKS B
ON B.BOOK_ID = O.BOOK_ID
GROUP BY B.GENRE;

--2] Find The Average Price Of Books In The 'Fantasy' Genre:

SELECT AVG(PRICE) AS AVERAGE_PRICE
FROM BOOKS
WHERE GENRE = 'Fantasy';

--3] List Customers Who Have Placed At Least 2 Orders:
SELECT CUSTOMER_ID,COUNT(ORDER_ID) AS ORDER_COUNT
FROM Orders
GROUP BY Customer_ID
HAVING COUNT (Order_ID)>2;

-- 4] Show The List Customers (Name) Who Have Placed At Least 2 Orders:
SELECT c.Name,
       o.Customer_ID,
       COUNT(o.Order_ID) AS Order_Count
FROM Orders o
JOIN Customers c
ON o.Customer_ID = c.Customer_ID
GROUP BY c.Name, o.Customer_ID
HAVING COUNT(o.Order_ID) > 2;

--5] Find The Most Frequently Ordered Book:

SELECT Book_ID, COUNT(Order_ID)AS Order_Count
FROM Orders
GROUP BY Book_ID
ORDER BY Order_Count DESC LIMIT 1;

--6] Show the Top 3 Most Expensive Books Of 'Fantasy' genre:

SELECT * FROM Books
WHERE Genre = 'Fantasy'
ORDER BY Price Desc LIMIT 3;

--7] Retrieve The Total Quantity Of Books Sold By Each Author

SELECT B.Author , Sum(O.Quantity) AS Total_Books_Sold
FROM Orders O
JOIN Books B
ON O. Book_ID = B.Book_ID
GROUP BY B.Author;     

--8] List The Cities Where Customers Who Spent Over $30 Are Located:

SELECT DISTINCT C.City
FROM Orders O
JOIN Customers C 
ON O.Customer_ID = C.Customer_ID
WHERE  O.Total_Amount > 30;

--9] Find The Customer Who Spent The Most On Orders:

SELECT C.Customer_ID, C.Name, SUM(O.Total_Amount) as Total_Spent
FROM Orders O
JOIN Customers C
ON O.Customer_ID = C.Customer_ID
GROUP BY C.Customer_ID, C.Name

--10] Calculate The Stock Remaining After Fulfilling All Orders:

SELECT B.Book_ID, B.Title, B.Stock - COALESCE(SUM(O.Quantity),0)AS Remaining_Stock
FROM Books B
LEFT JOIN Orders O
ON B.Book_ID = O.Book_ID
GROUP BY B.Book_ID;

-- OR

SELECT B.Book_ID , B.Title, B.Stock, COALESCE(SUM(O.Quantity),0) AS order_quantity,
      B.Stock - COALESCE(SUM(O.Quantity),0) AS Remaining_Stock
FROM Books B
LEFT JOIN Orders O
ON B.Book_ID = O.Book_ID
GROUP BY B.Book_ID;

Books B




ORDER BY Total_Spent desc LIMIT 1;





