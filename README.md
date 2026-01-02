# 📝 MS SQL Server Assessment – Practice Questions & Solutions

This repository contains **MS SQL Server assessment questions with complete solutions**.  
The focus of this assessment is to evaluate understanding of **T-SQL, database design, joins, aggregation, string functions, subqueries, views, and data manipulation**.



---

## 🛠️ Environment
- **Microsoft SQL Server 2019**
- **Azure Data Studio**
- **Ubuntu (Docker-based SQL Server)**
- **T-SQL**

---

## 📂 Assessment Structure

The assessment is based on a **book publishing database** and includes:

- Database creation
- Table design with constraints
- Sample data insertion
- 34 SQL assessment questions with answers

---

## 🗄️ Database Tables

| Table Name | Description |
|----------|-------------|
| `publishers` | Publisher details |
| `titles` | Book details |
| `authors` | Author information |
| `title_author` | Author–Title mapping |

---

## 📌 Topics Covered

### 🔹 DDL (Data Definition Language)
- `CREATE DATABASE`
- `CREATE TABLE`
- `ALTER TABLE`
- `CREATE VIEW`

### 🔹 DML (Data Manipulation Language)
- `INSERT`
- `UPDATE`
- `DELETE`

### 🔹 Joins
- `INNER JOIN`
- `LEFT JOIN`
- Multi-table joins

### 🔹 Aggregation & Grouping
- `COUNT`, `AVG`, `MAX`, `MIN`
- `GROUP BY`
- `HAVING`

### 🔹 String Functions
- `LIKE`
- `REPLACE`
- `CHARINDEX`
- Removing and extracting text

### 🔹 Date Functions
- `YEAR`
- `MONTH`
- `DATEADD`
- Recent records filtering

### 🔹 Subqueries & Conditions
- `IN`
- `BETWEEN`
- Nested queries
- Conditional filtering

---

## 🧪 Assessment Questions Included (34)

Examples:
- Add a column and update all rows
- Display titles ending with specific characters
- Find books based on sales and royalty conditions
- Count authors per title
- Display publishers based on publication year
- Create views with default values
- Delete and update rows based on conditions

Each question has a **corresponding SQL solution**.

---

## 📄 Example Question & Answer

**Question:**  
Display author ID and number of books written by each author.

```sql
SELECT author_id, COUNT(*) AS book_count
FROM title_author
GROUP BY author_id;
