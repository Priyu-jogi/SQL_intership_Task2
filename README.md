# SQL_intership_Task2

# 📘 Task 2 – Data Insertion and Handling Nulls

This task is a part of the **SQL Developer Internship** program. The goal is to practice SQL Data Manipulation Language (DML) operations such as `INSERT`, `UPDATE`, `DELETE`, and handling `NULL` values in a **Library Management System** database.

---

## 🛠 Objective
To insert, update, and delete records while effectively managing `NULL` values and ensuring data consistency across multiple related tables.

---

## 🗃️ Database Used
**Database Name:** `library_management_system`

**Tables Covered:**
- Staff
- Readers
- Books
- AuthSystem
- Issue
- Reserve
- ReturnBook
- KeepsTrack
- StaffLogin
- ReaderLogin

---

## 🔍 Key Concepts Applied
| Concept                        | Description |
|-------------------------------|-------------|
| `INSERT INTO`                 | Add new records into various tables |
| `UPDATE`                      | Modify phone number of a reader |
| `DELETE`                      | Remove a reserved book record |
| `IS NULL`                     | Select rows with missing publisher info |
| Partial Inserts               | Insert values into specific columns only |
| NULL Handling                 | Used `NULL` for missing middle names, phone numbers, publishers |
| Referential Integrity         | Maintained through foreign key constraints |

---

## 📑 What’s Done?

### ✔️ Data Insertion
- Added multiple records to `Staff`, `Readers`, `Books`, `AuthSystem`, etc.
- Used `NULL` values for optional fields like `middle_name`, `publisher`, `phone_no`.

### ✔️ Update Records
- Updated the phone number for `reader_id = 2`.

### ✔️ Delete Records
- Removed a reserved book using `DELETE` with `WHERE` condition.

### ✔️ Null Checks
- Selected books where `publisher IS NULL`.

### ✔️ Partial Inserts
- Added a staff member using only the `name` field.

### ✔️ Insert with NULL Defaults
- Added a reader without providing optional details.

---

## 📄 Sample Query Highlights

```sql
-- Insert reader with NULL middle name
INSERT INTO Readers (first_name, middle_name, last_name, phone_no, class_name, roll_no)
VALUES ('Meena', NULL, 'Patel', '9876543210', 'MCA', '23MCA01');

-- Update reader’s phone number
UPDATE Readers
SET phone_no = '9123456789'
WHERE reader_id = 2;

-- Delete a reserve record
DELETE FROM Reserve
WHERE reader_id = 1 AND isbn = 'ISBN12346';

-- Show books with missing publisher
SELECT * FROM Books
WHERE publisher IS NULL;
