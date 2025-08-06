-- Task 2: Data Insertion and Handling Nulls
-- Database: library_management_system

USE library_management_system;


-- Insert sample Staff
INSERT INTO Staff (name) VALUES 
('Anita Deshmukh'),
('sahil patil'),
('Ashwini Borole');

-- show table staff 
select * from Staff ;

-- Insert sample Readers (with some NULLs)
INSERT INTO Readers (first_name, middle_name, last_name, phone_no, class_name, roll_no) VALUES
('Meena', NULL, 'Patel', '9876543210', 'MCA', '23MCA01'),
('Priyanka','Ashish','Nikam','9080236575','BCA','23BCA07'),
('Ashish',NULL,'patil',NULL,'MSC IT','23MSC08'),
('Aarav', 'Raj', 'Sharma', NULL, 'MSC IT', '23MSC05');

-- show readers table recoreds
select * from Readers;

-- Insert sample Books
INSERT INTO Books (isbn, title, author, sr_no, publisher, price, category) VALUES
('ISBN12345', 'Let Us C', 'Yashwant Kanetkar', 'SR101', 'BPB', 299.50, 'Programming'),
('ISBN12387','java','Dr.Kumar','SR102','BPB',NULL,'Programing '),
('ISBN12346', 'Python Made Easy', 'Ramesh N.', 'SR103', NULL, 399.00, 'Education');

-- this show Books table recoreds
select * from Books;

-- Insert into AuthSystem
INSERT INTO AuthSystem (username, password) VALUES
('meena23', 'pass123'),
('Priyanka123','priyu@123'),
('Ashish123','Ashu@14'),
('aarav99', 'secure456'); 

-- this show Authsystem table recoreds
select * from AuthSystem;

-- Insert sample Issues
INSERT INTO Issue (reader_id, isbn, staff_id, issue_date) VALUES
(1, 'ISBN12345', 1, '2025-08-01'),
(2,'ISBN12387',2,'2025-08-02'),
(3, 'ISBN12346', 3, '2025-08-03');

-- this queary show all reader issues book recoreds
select * from Issue ;

-- Insert sample Reserves
INSERT INTO Reserve (reader_id, isbn, reserve_date) VALUES
(1, 'ISBN12346', '2025-08-05');

-- shows reserve or book buying date and their id
select * from Reserve;

-- Insert sample ReturnBook
INSERT INTO ReturnBook (reader_id, isbn, return_date) VALUES
(1, 'ISBN12345', '2025-08-10');

-- this query show return book recored
select * from ReturnBook;

-- Insert mapping in KeepsTrack
INSERT INTO KeepsTrack (staff_id, reader_id) VALUES
(1, 1),
(2, 2),
(3,3);

select * from KeepsTrack;

-- Insert into Login tables
INSERT INTO StaffLogin (staff_id, user_id) VALUES (1, 1);

-- this show staffloging table and thier values
select * from StaffLogin ;

INSERT INTO ReaderLogin (reader_id, user_id) VALUES (1, 2);

-- this show readerlogin table and thier vailues
select * from ReaderLogin ;

-- UPDATE: Fix phone number for reader_id = 2
UPDATE Readers 
SET phone_no = '9123456789' 
WHERE reader_id = 2;

 -- select * from Readers;

-- DELETE: Remove a reserved record
DELETE FROM Reserve 
WHERE reader_id = 1 AND isbn = 'ISBN12346';

select * from Reserve;

-- Example of IS NULL
SELECT * FROM Books WHERE publisher IS NULL;

-- Example of partial insert (allowed with column list)
INSERT INTO Staff (name) VALUES ('Komal Joshi');

select * from Staff;

-- Example of default/NULL (will show NULL in result if not defined)
INSERT INTO Readers (first_name, middle_name, last_name) VALUES ('Sahil', NULL, 'Verma');

-- select * from Readers;

 
