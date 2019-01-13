USE [db_libraries]
GO

CREATE PROCEDURE [dbo].[getKingCentral] 
AS
SELECT distinct bookTitle, 
tbl_book_copies.number_of_copies AS KingBooks
FROM ((tbl_book_copies
LEFT JOIN tbl_book_loans ON tbl_book_loans.branchID = 1)
LEFT JOIN tbl_books ON tbl_books.authorName = 'King, Stephen Edwin')

SELECT * FROM tbl_books;

For each book authored (or co-authored) by "Stephen King", retrieve the title and 
the number of copies owned by the library branch whose name is "Central".
