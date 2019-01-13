CREATE DATABASE db_libraries;
USE db_libraries;
CREATE TABLE tbl_library_branch (
    branchID int NOT NULL PRIMARY KEY,
    branchName varchar(255),
    branchAddress varchar(255)
);
CREATE TABLE tbl_publisher (
    publisherName varchar(255) NOT NULL PRIMARY KEY,
    publisherAddress varchar(255),
    publisherPhone varchar(15)
);
CREATE TABLE tbl_books (
    bookID int NOT NULL PRIMARY KEY,
    bookTitle varchar(255),
    bookPublisher varchar(255) NOT NULL FOREIGN KEY REFERENCES tbl_publisher(publisherName),
	authorName varchar(255) NOT NULL
);
CREATE TABLE tbl_authors (
    bookID int NOT NULL FOREIGN KEY REFERENCES tbl_books(bookID),
    authorID int NOT NULL,
    authorName varchar(255) NOT NULL 
);
CREATE TABLE tbl_book_copies (
    bookID int NOT NULL FOREIGN KEY REFERENCES tbl_books(bookID),
    branchID int NOT NULL FOREIGN KEY REFERENCES tbl_library_branch(branchID),
    number_of_copies int
);
CREATE TABLE tbl_borrowers (
    cardNo int NOT NULL PRIMARY KEY,
    borrowerName varchar(255) NOT NULL,
	borrowerAddress varchar(255),
	borrowerPhone varchar(15)
);
CREATE TABLE tbl_book_loans (
	bookID int NOT NULL FOREIGN KEY REFERENCES tbl_books(bookID),
    branchID int NOT NULL FOREIGN KEY REFERENCES tbl_library_branch(branchID),
    cardNo int NOT NULL FOREIGN KEY REFERENCES tbl_borrowers(cardNo),
	date_out varchar(10),
	date_due varchar(10)
);
INSERT INTO tbl_library_branch (branchID, branchName, branchAddress)
VALUES (1, 'Central', '300 Nicollet Ave');
INSERT INTO tbl_library_branch (branchID, branchName, branchAddress)
VALUES (2, 'Sharpstown', '1 Bag End');
INSERT INTO tbl_library_branch (branchID, branchName, branchAddress)
VALUES (3, 'Northfield', '210 Washington St');
INSERT INTO tbl_library_branch (branchID, branchName, branchAddress)
VALUES (4, 'Lake Wobegone', '666 Main St');
INSERT INTO tbl_library_branch (branchID, branchName, branchAddress)
VALUES (5, 'Ham', '1 Fresh Hock Lane');
INSERT INTO tbl_publisher(publisherName, publisherAddress, publisherPhone)
VALUES ('Picador USA', '16365 James Madison Highway', '888-330-8477');
INSERT INTO tbl_publisher(publisherName, publisherAddress, publisherPhone)
VALUES ('George Allen & Unwin', '83 Alexander St', '8425-0100');
INSERT INTO tbl_publisher(publisherName, publisherAddress, publisherPhone)
VALUES ('Collins', 'Westerhill Road, Bishopbriggs', '01484 668148');
INSERT INTO tbl_publisher(publisherName, publisherAddress, publisherPhone)
VALUES ('Houghton Mifflin', '3 Park Avenue, 19th Floor', '800-769-6850');
INSERT INTO tbl_publisher(publisherName, publisherAddress, publisherPhone)
VALUES ('Random House', '1745 Broadway, 3rd Floor', '572-6066');
INSERT INTO tbl_publisher(publisherName, publisherAddress, publisherPhone)
VALUES ('Macmillan Publishers', '175 Fifth Avenue', '555-5555');
INSERT INTO tbl_publisher(publisherName, publisherAddress, publisherPhone)
VALUES ('Bloomsbury', '1385 Broadway, 5th Floor', '212-419-5300');
INSERT INTO tbl_publisher(publisherName, publisherAddress, publisherPhone)
VALUES ('Reynal & Hitchcock', '125 High Street', '617-351-5000');
INSERT INTO tbl_publisher(publisherName, publisherAddress, publisherPhone)
VALUES ('Alfred A. Knopf', '1745 Broadway', '212-782-9000');
INSERT INTO tbl_publisher(publisherName, publisherAddress, publisherPhone)
VALUES ('Doubleday', '1745 Broadway', '212-782-9000');
INSERT INTO tbl_publisher(publisherName, publisherAddress, publisherPhone)
VALUES ('Bantam Books', '1745 Broadway, 15-3', '212-366-2262');
INSERT INTO tbl_publisher(publisherName, publisherAddress, publisherPhone)
VALUES ('Rex Collings', '2934 1/2 Beverly Glen Circle', '999-9999');
INSERT INTO tbl_publisher(publisherName, publisherAddress, publisherPhone)
VALUES ('Viking Press', 'Allen Lane', '212-414-3393');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (1, 'The Lost Tribe', 'Picador USA', 'Lee, Mark');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (2, 'The Found Tribe', 'Picador USA', 'Lee, Mark');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (3, 'The Lost-and-Found Tribe', 'Picador USA', 'Lee, Mark');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (4, 'The Not-Quite-Lost Tribe', 'Picador USA', 'Lee, Mark');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (5, 'The Merely-Misplaced Tribe', 'Picador USA', 'Lee, Mark');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (6, 'The Hobbit, or There and Back Again', 'George Allen & Unwin', 'Tolkien, John Ronald Reuel');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (7, 'The Lord of the Rings', 'Collins', 'Tolkien, John Ronald Reuel');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (8, 'The Silmarillion', 'Houghton Mifflin', 'Tolkien, John Ronald Reuel');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (9, 'Beowulf: The Monsters and the Critics', 'Houghton Mifflin', 'Tolkien, John Ronald Reuel');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (10, 'Tree and Leaf', 'Houghton Mifflin', 'Tolkien, John Ronald Reuel');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (11, 'The Adventures of Tom Bombadil', 'Houghton Mifflin', 'Tolkien, John Ronald Reuel');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (12, 'Smith of Wootton Major', 'Houghton Mifflin', 'Tolkien, John Ronald Reuel');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (13, 'Farmer Giles of Ham', 'Houghton Mifflin', 'Tolkien, John Ronald Reuel');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (14, 'The Hitchhikers Guide to the Galaxy', 'Random House', 'Adams, Douglas Noel');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (15, 'The Restaurant at the End of the Universe', 'Random House', 'Adams, Douglas Noel');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (16, 'Life, the Universe and Everything', 'Random House', 'Adams, Douglas Noel');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (17, 'So Long, and Thanks for All the Fish', 'Random House', 'Adams, Douglas Noel');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (18, 'Mostly Harmless', 'Random House', 'Adams, Douglas Noel');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (19, 'And Another Thing...', 'Random House', 'Adams, Douglas Noel');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (20, 'The Chronicles of Narnia', 'Macmillan Publishers', 'Lewis, Clive Staples');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (21, 'Harry Potter and the Philosophers Stone', 'Bloomsbury', 'Rowling, J. K.');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (22, 'The Little Prince', 'Reynal & Hitchcock?', 'de Saint-Exupéry, Antoine');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (23, 'Interview with the Vampire', 'Alfred A. Knopf', 'Rice, Anne');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (24, 'Discworld', 'Doubleday', 'Pratchett, Terry');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (25, 'A Song of Ice and Fire', 'Bantam Books', 'Martin, George Raymond Richard');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (26, 'Watership Down', 'Rex Collings', 'Adams, Richard George');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (27, 'Misery', 'Viking Press', 'King, Stephen Edwin');
INSERT INTO tbl_books (bookID, bookTitle, bookPublisher, authorName)
VALUES (28, 'Cujo', 'Viking Press', 'King, Stephen Edwin');
INSERT INTO tbl_authors (bookID, authorID, authorName)
VALUES (1, 1, 'Lee, Mark');
INSERT INTO tbl_authors (bookID, authorID, authorName)
VALUES (6, 2, 'Tolkien, John Ronald Reuel');
INSERT INTO tbl_authors (bookID, authorID, authorName)
VALUES (14, 3, 'Adams, Douglas Noel');
INSERT INTO tbl_authors (bookID, authorID, authorName)
VALUES (20, 4, 'Lewis, Clive Staples');
INSERT INTO tbl_authors (bookID, authorID, authorName)
VALUES (21, 5, 'Rowling, J. K.');
INSERT INTO tbl_authors (bookID, authorID, authorName)
VALUES (22, 6, 'de Saint-Exupéry, Antoine');
INSERT INTO tbl_authors (bookID, authorID, authorName)
VALUES (23, 7, 'Rice, Anne');
INSERT INTO tbl_authors (bookID, authorID, authorName)
VALUES (24, 8, 'Pratchett, Terry');
INSERT INTO tbl_authors (bookID, authorID, authorName)
VALUES (25, 9, 'Martin, George Raymond Richard');
INSERT INTO tbl_authors (bookID, authorID, authorName)
VALUES (26, 10, 'Adams, Richard George');
INSERT INTO tbl_authors (bookID, authorID, authorName)
VALUES (27, 10, 'King, Stephen Edwin');
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (27, 1, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (28, 1, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (3, 1, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (4, 1, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (5, 1, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (6, 1, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (7, 1, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (8, 1, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (9, 1, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (10, 1, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (1, 2, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (2, 2, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (3, 2, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (4, 2, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (5, 2, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (6, 2, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (7, 2, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (8, 2, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (9, 2, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (10, 2, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (1, 3, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (2, 3, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (3, 3, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (4, 3, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (5, 3, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (6, 3, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (7, 3, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (8, 3, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (9, 3, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (10, 3, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (1, 4, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (2, 4, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (3, 4, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (4, 4, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (5, 4, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (6, 4, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (7, 4, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (8, 4, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (9, 4, 2);
INSERT INTO tbl_book_copies (bookID, branchID, number_of_copies)
VALUES (10, 4, 2);
INSERT INTO tbl_borrowers (cardNo, borrowerName, borrowerAddress, borrowerPhone)
VALUES (1, 'Heiberg, Keith', 'Spruce Place', '111-1111');
INSERT INTO tbl_borrowers (cardNo, borrowerName, borrowerAddress, borrowerPhone)
VALUES (2, 'Baggins, Bilbo', 'Bag End', '222-2222');
INSERT INTO tbl_borrowers (cardNo, borrowerName, borrowerAddress, borrowerPhone)
VALUES (3, 'Potter, Harry', 'Privet Lane', '333-3333');
INSERT INTO tbl_borrowers (cardNo, borrowerName, borrowerAddress, borrowerPhone)
VALUES (4, 'Prince, The Little', 'B 612"', '444-4444');
INSERT INTO tbl_borrowers (cardNo, borrowerName, borrowerAddress, borrowerPhone)
VALUES (5, 'Beeblebrox, Zaphod', 'Betelgeuse', '555-5555');
INSERT INTO tbl_borrowers (cardNo, borrowerName, borrowerAddress, borrowerPhone)
VALUES (6, 'Giles, Farmer', 'Ham', '666-6666');
INSERT INTO tbl_borrowers (cardNo, borrowerName, borrowerAddress, borrowerPhone)
VALUES (7, 'Ridcully, Mustrum', 'Unseen University', '777-7777');
INSERT INTO tbl_borrowers (cardNo, borrowerName, borrowerAddress, borrowerPhone)
VALUES (8, 'Woundwort, General', 'Efrafa', '888-8888');
INSERT INTO tbl_borrowers (cardNo, borrowerName, borrowerAddress, borrowerPhone)
VALUES (9, 'Took, Peregrin', 'The Shire', '999-9999');
INSERT INTO tbl_borrowers (cardNo, borrowerName, borrowerAddress, borrowerPhone)
VALUES (10, 'Gray, Gandalf the', 'Middle-Earth', '000-0000');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (1, 1, 1, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (2, 1, 2, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (3, 1, 3, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (4, 1, 4, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (5, 1, 5, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (6, 1, 6, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (7, 1, 7, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (8, 1, 8, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (9, 1, 9, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (10, 1, 10, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (1, 2, 10, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (2, 2, 9, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (3, 2, 8, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (4, 2, 7, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (5, 2, 6, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (6, 2, 5, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (7, 2, 4, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (8, 2, 3, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (9, 2, 2, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (10, 2, 1, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (1, 3, 1, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (2, 3, 2, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (3, 3, 3, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (4, 3, 4, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (5, 3, 5, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (6, 3, 6, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (7, 3, 7, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (8, 3, 8, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (9, 3, 9, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (10, 3, 10, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (1, 4, 10, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (2, 4, 9, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (3, 4, 8, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (4, 4, 7, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (5, 4, 6, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (6, 4, 5, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (7, 4, 4, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (8, 4, 3, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (9, 4, 2, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (10, 4, 1, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (1, 5, 1, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (2, 5, 2, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (3, 5, 3, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (4, 5, 4, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (5, 5, 5, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (6, 5, 6, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (7, 5, 7, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (8, 5, 8, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (9, 5, 9, '1-1-2019', '3-1-2019');
INSERT INTO tbl_book_loans (bookID, branchID, cardNo, date_out, date_due)
VALUES (10, 5, 10, '1-1-2019', '3-1-2019');
