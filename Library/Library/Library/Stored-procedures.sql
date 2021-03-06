USE [db_libraries]

CREATE PROCEDURE dbo.getCopiesByBranchAndTitle @branchName varchar(255), @bookTitle varchar(255)
AS
SELECT tbl_book_copies.number_of_copies 
FROM ((tbl_book_copies 
INNER JOIN tbl_library_branch ON bookID = branchName) 
INNER JOIN Sales.SalesPersonQuotaHistory ON Sales.SalesPersonQuotaHistory.SalesQuota > 105000);
GO


How many copies of the book titled "The Lost Tribe" are owned by the library branch 
whose name is "Sharpstown"?

How many copies of the book titled "The Lost Tribe" are owned by each library branch?

Retrieve the names of all borrowers who do not have any books checked out.

For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, 
retrieve the book title, the borrower's name, and the borrower's address.

For each library branch, retrieve the branch name and the total number of books 
loaned out from that branch.

Retrieve the names, addresses, and the number of books checked out for all borrowers 
who have more than five books checked out.

For each book authored (or co-authored) by "Stephen King", retrieve the title and 
the number of copies owned by the library branch whose name is "Central".


CREATE PROCEDURE dbo.getSalesBonusTerritory @TerritoryID int, @Bonus money
AS
SELECT Sales.SalesPerson.TerritoryID, Sales.SalesPerson.SalesQuota, Bonus 
FROM ((Sales.SalesPerson 
INNER JOIN Sales.SalesTerritory ON Sales.SalesTerritory.TerritoryID = Sales.SalesPerson.TerritoryID) 
INNER JOIN Sales.SalesPersonQuotaHistory ON Sales.SalesPersonQuotaHistory.SalesQuota > 105000);
GO;
