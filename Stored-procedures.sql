USE [db_libraries]
GO

CREATE PROCEDURE [dbo].[getKingCentral] 
AS
SELECT distinct bookTitle, 
tbl_book_copies.number_of_copies AS KingBooks
FROM ((tbl_book_copies
LEFT JOIN tbl_book_loans ON tbl_book_loans.branchID = 1)
LEFT JOIN tbl_books ON tbl_books.authorName = 'King, Stephen Edwin')

CREATE PROCEDURE [dbo].[getBorrowersOverFiveBooks] 
AS
SELECT borrowerName, 
borrowerAddress, 
COUNT(tbl_book_loans.bookID) AS booksOut
FROM (tbl_borrowers 
LEFT JOIN tbl_book_loans ON tbl_book_loans.cardNo = tbl_borrowers.cardNo)
GROUP BY borrowerName, 
borrowerAddress
HAVING COUNT(tbl_book_loans.bookID) > 5

CREATE PROCEDURE [dbo].[getBorrowersSharpstownToday] 
AS
SELECT tbl_books.bookTitle, tbl_borrowers.borrowerName, 
tbl_borrowers.borrowerAddress, tbl_book_loans.date_due
FROM (((tbl_borrowers
INNER JOIN tbl_book_loans ON tbl_borrowers.cardNo = tbl_book_loans.cardNo)
INNER JOIN tbl_books ON tbl_book_loans.bookID = tbl_book_loans.bookID)
INNER JOIN tbl_library_branch ON tbl_library_branch.branchID = tbl_book_loans.branchID)
WHERE tbl_book_loans.date_due = CONVERT(date, getdate()) 
AND tbl_library_branch.branchName = 'Sharpstown';
GO

CREATE PROCEDURE [dbo].[getBooklessBorrowers] 
AS
SELECT tbl_borrowers.borrowerName
FROM (tbl_borrowers
LEFT OUTER JOIN tbl_book_loans ON tbl_borrowers.cardNo = tbl_book_loans.cardNo)
WHERE tbl_book_loans.cardNo IS NULL;
GO

CREATE PROCEDURE [dbo].[getCopiesByTheLostTribe] 
	@bookTitle varchar(255)
AS
SELECT number_of_copies, tbl_library_branch.branchName
FROM ((tbl_book_copies
INNER JOIN tbl_books ON tbl_books.bookID = tbl_book_copies.bookID)
INNER JOIN tbl_library_branch ON tbl_library_branch.branchID = tbl_book_copies.branchID)
WHERE tbl_books.bookTitle = 'The Lost Tribe'

CREATE PROCEDURE [dbo].[getCopiesBySharpstownAndTheLostTribe] 
AS
SELECT number_of_copies 
FROM ((tbl_book_copies 
INNER JOIN tbl_library_branch ON branchName = 'Sharpstown') 
INNER JOIN tbl_books ON tbl_books.bookID = tbl_book_copies.bookID)
WHERE tbl_books.bookTitle = 'The Lost Tribe'
