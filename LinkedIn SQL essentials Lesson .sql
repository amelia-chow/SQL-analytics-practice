/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: QUERY DISPLAYS ALL CUSTOMERS FIRST, LAST NAME AND EMAIL.
*/

SELECT 
	C.FirstName AS [Customer First Name], 
	LastName AS [Customer Last Name], 
	Email AS 'Customer Email'
FROM 
	Customer as C
ORDER BY 
	FirstName ASC, 
	LastName DESC
LIMIT 10;

/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: QUERY displays the track name and prices of top 20 tracks, sorted by track name.
*/

SELECT 
	t.Name as "Track Name",
	t.UnitPrice as PRICE
FROM 
	Track as t
ORDER BY 
	t .Name DESC 
LIMIT 20;

/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: QUERY displays the number of customer who purchased 2 songs at $0.99 each.
*/

SELECT 
	InvoiceDate, 
	BillingCountry,
	BillingCity, 
	total
FROM Invoice
WHERE Total = 1.98
ORDER BY 
	InvoiceDate;

	/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: QUERY displays the number of invoices exist between 1.98 and 5.00.
*/

SELECT 
	InvoiceDate, 
	BillingCountry,
	BillingCity, 
	total
FROM 
	Invoice
WHERE 
	Total BETWEEN 1.98 AND 5.00
ORDER BY 
	InvoiceDate;
	

	/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: QUERY displays the number of invoices that are exactly 1.98 or 3.96.
*/

SELECT 
	InvoiceDate, 
	BillingCountry,
	BillingCity, 
	total
FROM 
	Invoice
WHERE 
	Total = 1.98 or Total = 3.96
ORDER BY 
	InvoiceDate;
--
SELECT 
	InvoiceDate, 
	BillingCountry,
	BillingCity, 
	total
FROM 
	Invoice
WHERE 
	Total IN (1.98, 3.96)
ORDER BY 
	InvoiceDate;
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: QUERY displays the number of invoices that were biled to Brussels.
*/	
	
SELECT 
	InvoiceDate, 
	BillingCountry ,
	BillingCity, 
	total
FROM 
	Invoice
WHERE 
	BillingCity = 'Brussels'
ORDER BY 
	InvoiceDate;
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: QUERY displays the number of invoices that were biled to Brussels, Orlando or Paris.
*/	
	
SELECT 
	InvoiceDate, 
	BillingCountry ,
	BillingCity, 
	total
FROM 
	Invoice
WHERE 
	BillingCity IN ( 'Brussels', 'Orlando', 'Paris')
ORDER BY 
	InvoiceDate;
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: QUERY displays the number of invoices that were biled to cities starting with B.
*/	

-- %: wildcard character, works in conjuction with the LIKE operator: i dont care what comes next 

SELECT 
	InvoiceDate, 
	BillingCountry ,
	BillingCity, 
	total
FROM 
	Invoice
WHERE 
	BillingCity LIKE 'B%'
ORDER BY 
	InvoiceDate;
	
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: QUERY displays the number of invoices that were biled to cities that have a B in its name.
*/	

-- %: wildcard character, works in conjuction with the LIKE operator: i dont care what comes next/before 

SELECT 
	InvoiceDate, 
	BillingCountry ,
	BillingCity, 
	total
FROM 
	Invoice
WHERE 
	BillingCity LIKE '%B%'
ORDER BY 
	InvoiceDate;
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: QUERY displays the number of invoices that were biled on 2010-05-22 00:00:00.
*/	


SELECT 
	InvoiceDate, 
	BillingCountry ,
	BillingCity, 
	total
FROM 
	Invoice
WHERE 
	InvoiceDate = '2010-05-22 00:00:00'
ORDER BY 
	InvoiceDate;
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: QUERY displays the number of invoices that were biled on 2010-05-22 00:00:00.
*/	

-- date function: don't bother the time

SELECT 
	InvoiceDate, 
	BillingCountry ,
	BillingCity, 
	total
FROM 
	Invoice
WHERE 
	date(InvoiceDate) = '2010-05-22'
ORDER BY 
	InvoiceDate;
	
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: QUERY displays the invoices that were biled after 2010-05-22 and have a total of less than 3.00.
*/	


SELECT 
	InvoiceDate, 
	BillingCountry ,
	BillingCity, 
	total
FROM 
	Invoice
WHERE 
	date(InvoiceDate) > '2010-05-22' AND total < 3.00
ORDER BY 
	InvoiceDate;
	
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: QUERY displays the invoices who's billing city starts with P or D.
*/	


SELECT 
	InvoiceDate, 
	BillingCountry ,
	BillingCity, 
	total
FROM 
	Invoice
WHERE 
	BillingCity LIKE 'P%' OR BillingCity LIKE 'D%'
ORDER BY
	InvoiceDate;
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: QUERY displays the invoices that are greater than 1.98 and cities name starts with P or D.
*/	

-- PEDMAS: Parenthese, Exponents, Multiplication/Division, Addition/Subtraction

SELECT 
	InvoiceDate, 
	BillingCountry ,
	BillingCity, 
	total
FROM 
	Invoice
WHERE 
	total > 1.98 AND (BillingCity LIKE 'P%' OR BillingCity LIKE 'D%')
ORDER BY
	InvoiceDate;
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: Goal is to have as many customers to spend between $7.00 and $15.00.

( Using CASE)

SALES CAT: 
Baseline Purchase - Between $0.99 and $1.99
Low Purchase - Between $2.00 and $6.99 
Target Purchase - Between $7.00 and $15.00 
Top Performer - Above $15.00

*/
SELECT 
	InvoiceDate, 
	BillingCountry ,
	BillingCity, 
	BillingAddress
	total,
	CASE 
		WHEN total < 2.00 THEN  'Baseline Purchase'
		WHEN total Between 2.00 and 6.99 THEN 'Low Purchase'
		WHEN total Between 7.00 and 15.00 THEN 'Target Purchase'
		ELSE  'Top Performer'
	END AS [Purchase Type]
FROM 
	Invoice
ORDER BY
	BillingCity;
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: Goal is to have as many customers to spend between $7.00 and $15.00.

( Using CASE)

SALES CAT: 
Baseline Purchase - Between $0.99 and $1.99
Low Purchase - Between $2.00 and $6.99 
Target Purchase - Between $7.00 and $15.00 
Top Performer - Above $15.00

*/
SELECT 
	InvoiceDate, 
	BillingCountry ,
	BillingCity, 
	BillingAddress,
	total,
	CASE 
		WHEN total < 2.00 THEN  'Baseline Purchase'
		WHEN total Between 2.00 and 6.99 THEN 'Low Purchase'
		WHEN total Between 7.00 and 15.00 THEN 'Target Purchase'
		ELSE  'Top Performer'
	END AS PurchaseType
FROM 
	Invoice
WHERE 
	PurchaseType = 'Top Performer' 
ORDER BY
	BillingCity;
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: Create a report that categorises each track based on its price, offering insights into range of music available for purchase. 

( Using CASE)

PRICE CAT: 
Budget - Priced at $0.99 or LESS
Regular - Priced between $1.00 and $1.49
Premium - Priced between $1.50 and $1.99
Exclusive - Priced above $1.99

*/

SELECT 
	t.Name as 'Track Name', 
	Composer ,
	UnitPrice as Price,
	CASE 
		WHEN UnitPrice <= 0.99  THEN  'Budget'
		WHEN UnitPrice Between 1.00 and 1.49 THEN 'Regular'
		WHEN UnitPrice Between 1.50 and 1.99 THEN 'Premium'
		ELSE  'Exclusive'
	END AS PriceCategory
FROM 
	Track as t 
ORDER BY
	UnitPrice ASC;
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: JOINS

simplifying joins by using aliases
when joining, always remember the table name in front before '.' and the column/field

*/

SELECT 
	c.FirstName,
	c.LastName,
	i.InvoiceId,
	i.CustomerId,
	i.InvoiceDate,
	i.total
FROM Invoice AS i
INNER JOIN Customer AS c
ON i.CustomerId = c.CustomerId
ORDER BY c.CustomerId;

-- JOINS
-- INNER JOIN: only returns matching records, any unmatched data is ignored.
-- OUTER JOIN: ALL data is returned, disregarding if its missing from one or more table, missing data will be displayed as null data
-- LEFT OUTER JOIN: ALL records of the LEFT table will be returned while matching the informations from the RIGHT table.
-- RIGHT OUTER JOIN: ALL records of the RIGHT table will be returned while matching the informations from the LEFT table.
/* If the records from Right table does not have matched info from Left table, then these records will not show up in the JOIINED table*/

/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: JOINS on more than two tables | what employees are responsible for the 10 highest individual sales?
*/

SELECT 
	E.FirstName AS [Employee First Name],
	E.LastName AS [Employee Last Name],
	E.EmployeeId,
	C.FirstName AS [Customer First Name],
	C.LastName AS [Customer First Name],
	I.InvoiceId,
	I.total
	FROM Invoice AS I
INNER JOIN Customer as C
	ON I.CustomerId = C.CustomerId
INNER JOIN Employee as E
	ON C.SupportRepId = E.EmployeeId
ORDER BY I.total DESC
LIMIT 10; 

/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: identifying the interactions between custoemrs and supportive representatives
*/

SELECT 
	c.FirstName AS [CustomerFirstName],
	c.LastName AS [CustomerLastName],
	e.FirstName AS [SupportRepFirstName],
	e.LastName AS [SupportRepLastName]
FROM Customer as c
INNER JOIN Employee as e
ON c.SupportRepId  = e.EmployeeId
ORDER BY e.LastName, c.LastName;


/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: Creating mailing list of US customers
*/

-- '||' Concatenate: link or join
SELECT 
	FirstName, 
	LastName, 
	Address, 
	FirstName || ' ' ||  LastName || ' ' || Address || ' '|| City || ' ' || State || ' ' || PostalCode AS [Mailing Address]
FROM 
	Customer
WHERE 
	Country = 'USA';

-- Truncate: to shorten or reduce
-- Length 
- substr: only returning selected 
-- UPPER and LOWER 
SELECT 
	FirstName, 
	LastName, 
	Address, 
	FirstName || ' ' ||  LastName || ' ' || Address || ' '|| City || ' ' || State || ' ' || PostalCode AS [Mailing Address],
	length(PostalCode),
	substr(PostalCode, 1,5) AS [5 digit Postal Code], 
	UPPER (FirstName) AS [First Name All Caps],
	LOWER(LastName) AS [Last Name All Lower]
FROM 
	Customer
WHERE 
	Country = 'USA';
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: Calculate ages of all employees
*/
- strftime: changing format 
- 'now': uses the computer date

SELECT 
	FirstName, 
	LastName, 
	BirthDate,
	strftime('%Y-%m-%d', BirthDate) AS [Birthdate No timecode], 
	strftime('%Y-%m-%d', 'now') - strftime('%Y-%m-%d', BirthDate)  AS Age
FROM 
	Employee;

/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: Aggregate Functions & Nesting Functions | What are our all time global sales?
*/
-- nesting function: a function contained within another function

SELECT 
	sum(total) AS [total sales],
	Round(avg(total),2) AS [Average sales],
	max(total) AS [Highest sales],
	min(total) AS [Lowest sales],
	count(*) AS [Sales count]
FROM Invoice
;


/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: adjust postal code
*/

SELECT 
	FirstName || ' ' || LastName AS [Customer Full Name],
	substr(PostalCode, 1,5) AS [Standardized Postal Code]
FROM 
	Customer
WHERE 
	 Country = 'USA'
ORDER BY 
	[Customer Full Name];
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: GROUP BY clause, grouping in SQL - what are the average invoice totals by city?
*/

SELECT
	BillingCity,
	total, 
	round(avg(total),2) AS Average_Invoice_Total
FROM 
	Invoice
GROUP BY 
	BillingCity
ORDER BY 
	BillingCity;
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: GROUP BY clause, grouping in SQL - AVERAGE INVOICE TOTALS BY CITY FOR CITIES THAT START WITH L?
*/

-- WHERE Clause will always come after FROM, before GROUP BY

SELECT
	BillingCity,
	total, 
	round(avg(total),2) AS Average_Invoice_Total
FROM 
	Invoice
WHERE
	BillingCity LIKE "L%"
GROUP BY 
	BillingCity
ORDER BY 
	BillingCity;
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: GROUP BY clause, grouping in SQL - show AVERAGE INVOICE TOTALS > $5.00?
*/

-- HAVING Clause : comes after group by clause || filtering fields that have aggregates
-- WHERE Clase: comes before group by clause, after FROM || filtering fields that do not have aggregates

SELECT
	BillingCity,
	total, 
	round(avg(total),2) AS Average_Invoice_Total
FROM 
	Invoice
GROUP BY 
	BillingCity
HAVING 
	avg(total) > 5.00
ORDER BY 
	BillingCity;
	
-- WHERE and HAVING Clause 
-- DESCRIPTION: GROUP BY clause, grouping in SQL - show AVERAGE INVOICE TOTALS > $5.00 for cities starting with B?

SELECT
	BillingCity,
	total, 
	round(avg(total),2) AS Average_Invoice_Total
FROM 
	Invoice
WHERE 
	BillingCity LIKE "B%"
GROUP BY 
	BillingCity
HAVING 
	avg(total) > 5.00
ORDER BY 
	BillingCity;
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: GROUP BY more than one field at a time | what are the average invoice totals by billing country and city?
*/

SELECT
	BillingCountry,
	BillingCity,
	total, 
	round(avg(total),2) AS Average_Invoice_Total
FROM 
	Invoice
GROUP BY 
	BillingCountry, BillingCity
ORDER BY 
	BillingCountry;
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: average spending amount of customers in each city 
*/

SELECT 
	BillingCity AS City,
	round(avg(total),2) AS AverageSpending
FROM
	Invoice AS i
GROUP BY 
	BillingCity 
ORDER BY 
	BillingCity ASC
	;


/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: subquery in the WHERE| invoices that are less than the average amount
*/
-- Nested Query: a query wrapped inside of a query

SELECT 
	InvoiceDate, 
	BillingAddress, 
	BillingCity, 
	total 
FROM 
	Invoice
WHERE 
	total < 
		(SELECT round(avg(total),2)
		FROM Invoice)
ORDER BY 
	total DESC;
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: subquery IN THE SELECT | each individual city performing against global average sales
*/

SELECT 
	BillingCity,
	round(AVG(TOTAL),2) AS CityAvgSales,
	round((SELECT avg(total) FROM Invoice),2) AS GlobalAvgSales
FROM 
	Invoice
GROUP BY 
	BillingCity
ORDER BY 
	BillingCity;
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: subquery without aggregate functions
*/

SELECT InvoiceDate, BillingAddress, BillingCity
FROM Invoice
WHERE InvoiceDate > 
	(SELECT 
		InvoiceDate
	FROM 
		Invoice
	WHERE 
		InvoiceId = 251);

/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: subquery IN THE IN clause | returning multiple values from a subquery
*/

SELECT 
	InvoiceDate,
	BillingAddress, 
	BillingCity
FROM 
	Invoice
WHERE 
	InvoiceDate IN
(SELECT InvoiceDate
	FROM Invoice
	WHERE InvoiceId IN (251, 252, 254));
	
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: subqueries and DISTINCT and NOT IN | Which tracks are not selling?
*/

SELECT 
	TrackId
	Name, 
	Composer
FROM
	Track
WHERE 
	TrackId NOT IN 
		(SELECT DISTINCT TrackId
		FROM InvoiceLine
		ORDER BY TrackId);
		
/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: tracks that have never been sold
*/
SELECT 
	t.TrackId as "Track ID",
	t.Name as "Track Name",
	t.Composer,
	g.Name as Genre
FROM Track AS t 
INNER JOIN Genre as g
ON t.GenreId = g.GenreId
WHERE t.TrackId NOT IN 
		(SELECT DISTINCT TrackId
		FROM InvoiceLine as li
		ORDER BY TrackId)
ORDER BY t.name ASC;

/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: views
*/
-- VIEW: query that is saves and can be executed repeatedly or referenced by other queries

CREATE VIEW V_AvgTotal AS
SELECT 
	round(avg(total),2) AS [AverageTotal]
FROM Invoice
;

/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: Views and Joins
*/

CREATE VIEW V_Tracks_InvoiceLine AS 
SELECT
	il.InvoiceId, 
	il.UnitPrice, 
	il.Quantity, 
	t.Name, 
	t.Composer, 
	t.Milliseconds
FROM 
	InvoiceLine as il 
INNER JOIN 
	Track as t
ON 
	il.TrackId = t.TrackId;

/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: DML | Inserting Data
*/

INSERT INTO 
	Artist (Name)
VALUES ('Bob Marley');

/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: DML | Updating Data
*/
-- modifies the data
-- used with WHERE clause: specifies the row of data to update

UPDATE Artist 
SET Name = 'Damien Marley'
WHERE ArtistId = 276;

/* 
CREATED BY AMELIA
CREATED DATE: 07/09/2026
DESCRIPTION: DML | Deleting Data
*/
DELETE FROM Artist
WHERE ArtistId = 276;

/*QUIZ*/

SELECT 
	count(TrackId)
FROM 
	Track
WHERE Composer IS NULL ;

SELECT  
	LastName
FROM Customer
WHERE LastName LIKE 'G%';