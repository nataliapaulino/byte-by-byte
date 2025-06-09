# SQL Reference Guide

![License: CC BY-NC-ND 4.0](https://img.shields.io/badge/license-CC--BY--NC--ND%204.0-blue)
![Last Commit](https://img.shields.io/github/last-commit/nataliapaulino/byte-by-byte?color=brightgreen)
![Status](https://img.shields.io/badge/status-personal%20project-lightgrey)



This repository is a structured and practical SQL study guide designed to learn, practice, and master SQL — from the basics to more advanced topics.

It includes categorized examples with explanations for each topic, as well as **mini-assessment tests** at the end of certain sections.

<br>

📌 **Upcoming Additions:** More content will be added soon.

You're welcome to explore the repository and follow along. 

For feedback, suggestions, or questions, feel free to start a thread in the **Discussions** tab.

---

## Assessment Tests

You'll find assessment tests in the following folders:

- [02_advanced ➤](https://github.com/nataliapaulino/byte-by-byte/blob/main/sql/02_advanced/06_assessment_test.sql)

- [03_conditionals_and_procedures ➤](https://github.com/nataliapaulino/byte-by-byte/blob/main/sql/03_schema_and_data/07_assessment_test.sql)

Files are named `assessment_test.sql` and are designed for self-evaluation.

---

## Table of Contents

> The full topic breakdown is included below with syntax, explanations, and links to .sql files.

- [`SELECT`](#select)
- [`SELECT DISTINCT`](#select-distinct)
- [`SELECT COUNT()`](#select-count)
- [`SELECT` with `WHERE`](#select-with-where)
- [`ORDER BY`](#order-by)
- [`LIMIT`](#limit)
- [`BETWEEN`](#between)
- [`IN`](#in)
- [`LIKE` and `ILIKE`](#like-and-ilike)
- [Aggregate Functions](#aggregate-functions)
- [`GROUP BY`](#group-by)
- [`HAVING`](#having)

---

## `SELECT`

The `SELECT` statement allows us to **retrieve information** from a table.

### Syntax

```sql
SELECT column_name FROM table_name;
```
> `*` returns all columns from the specified table.

<br>

## `SELECT DISTINCT`

The `SELECT DISTINCT` statement is used to return only unique (distinct) values from a column.

### Syntax

```sql
SELECT DISTINCT column_name FROM table_name;
```
> Parentheses are optional, but also valid:
```sql
SELECT DISTINCT(column_name) FROM table_name;
```

<br>

## `SELECT COUNT()`

The `COUNT()` function returns the number of rows that match a specified condition, or the total number of rows in a table.

### Syntax

```sql
SELECT COUNT(column_name) FROM table_name;
```
> Parentheses are required with COUNT().

<br>

## `SELECT` with `WHERE`

The `WHERE` clause allows us to specify conditions that filter which rows will be returned.

### Syntax

```sql
SELECT column1, column2
FROM table_name
WHERE condition;
```

### Comparison Operators

Used in the `WHERE` clause to compare values.

| Operator(s)       | Description                |
|-------------------|----------------------------|
| `=`               | Equal to                   |
| `>`               | Greater than               |
| `<`               | Less than                  |
| `>=`              | Greater than or equal to   |
| `<=`              | Less than or equal to      |
| `<>`, `!=`        | Not equal to               |

### Logical Operators

Logical operators are used to combine multiple conditions in the `WHERE` clause.

| Operator | Description                                   |
|----------|-----------------------------------------------|
| `AND`    | Returns true if **all conditions** are true   |
| `OR`     | Returns true if **at least one** is true      |
| `NOT`    | Reverses the result of a condition            |

### Example

```sql
SELECT name, age
FROM people
WHERE age > 18 AND city = 'New York';
```

[See SELECT examples ➤](https://github.com/nataliapaulino/byte-by-byte/blob/main/sql/01_basics/01_select.sql)

<br>

##  `ORDER BY`

The `ORDER BY` clause is used to **sort rows** based on one or more column values, in either **ascending** (`ASC`) or **descending** (`DESC`) order.

 `ORDER BY` must appear **after the `FROM` or `WHERE` clause**, and **before `LIMIT`** (if used).

###  Syntax

```sql
SELECT column_1, column_2
FROM table_name
ORDER BY column_1 ASC; -- or DESC
```

- `ASC` → Sorts in ascending order

- `DESC` → Sorts in descending order

> If no keyword is specified, `ASC` is used by default

[See ORDER BY examples ➤](https://github.com/nataliapaulino/byte-by-byte/blob/main/sql/01_basics/02_order_by.sql)

<br>

## `LIMIT`

The `LIMIT` clause allows us to restrict the number of rows returned by a query.

> `LIMIT` must be placed at the very end of the query.

### Syntax

```sql
SELECT column_1, column_2
FROM table_name
ORDER BY column_1
LIMIT number_of_rows;
```
 [See LIMIT examples ➤](https://github.com/nataliapaulino/byte-by-byte/blob/main/sql/01_basics/03_limit.sql)

<br>

## `BETWEEN`

The `BETWEEN` operator lets you check if a value falls within a range of values.

### Syntax

```sql
value BETWEEN low AND high
```

This means the same as:

```sql
value >= low AND value <= high
```

There’s also the `NOT BETWEEN` operator, which means the value is outside the range:

### Syntax

```sql
value < low OR value > high
```

or

```sql
value NOT BETWEEN low AND high
```

You can use `BETWEEN` with dates too.

> **Important:** Dates must be in the ISO 8601 format (`YYYY-MM-DD`).

```sql
date BETWEEN '2007-01-01' AND '2007-02-01'
```

> **NOTE:** Dates must be enclosed in single quotes because they are **timestamp** values, not numeric datatypes.

[See BETWEEN examples ➤](https://github.com/nataliapaulino/byte-by-byte/blob/main/sql/01_basics/04_between.sql)

<br>

## `IN`

The `IN` operator checks if a value matches any value in a list.

### Syntax

```sql
value IN (option1, option2, ..., option_n)
```

#### Example:

```sql
SELECT color FROM table
WHERE color IN ('black', 'white', 'pink');
```

Use `NOT IN` to return rows where the value is not one of the listed options:

```sql
SELECT color FROM table
WHERE color NOT IN ('black', 'white');
```
[See IN examples ➤](https://github.com/nataliapaulino/byte-by-byte/blob/main/sql/01_basics/05_in.sql)

<br>

## `LIKE` and `ILIKE`

The `LIKE` operator helps you find strings that match a certain pattern, using special wildcard characters:

| Wildcard | What it does                    |
|----------|----------------------------------|
| `%`      | Matches any number of characters |
| `_`      | Matches exactly one character     |

### Examples with `%`:

- Find all names starting with 'A':

```sql
WHERE name LIKE 'A%'
```

- Find all names ending with 'a':

```sql
WHERE name LIKE '%a'
```

> **Note:** `LIKE` is case-sensitive. If you want to ignore case, use `ILIKE` instead.

### Example with `_`:

Find Toy Story films with one extra character at the end:

```sql
WHERE title LIKE 'Toy Story _'
```

You can combine wildcards for more complex searches:

```sql
WHERE username LIKE '_lex%'
```

This would match usernames like:

- Alex
- FlexMan
- Blexton

[See LIKE/ILIKE examples ➤](https://github.com/nataliapaulino/byte-by-byte/blob/main/sql/01_basics/06_like_ilike.sql)

<br>

## Aggregate Functions

Aggregate functions perform calculations on multiple rows and return a single summary value.

| Function | Description                     |
|----------|---------------------------------|
| `AVG()`    | Returns the average value       |
| `COUNT()`  | Returns the number of values    |
| `MAX()`    | Returns the maximum value       |
| `MIN()`    | Returns the minimum value       |
| `SUM()`    | Returns the total sum of values |

> Since `AVG()` returns a floating-point number (e.g. 6.89564), you can use `ROUND()` to limit decimal precision:

```sql
SELECT ROUND(AVG(price), 2)
FROM product;
```

[See Aggregate Functions examples ➤](https://github.com/nataliapaulino/byte-by-byte/blob/main/sql/01_basics/07_aggregate_functions.sql)

<br>

## `GROUP BY`

The `GROUP BY` clause allows you to perform aggregation per category (or group). It must appear after a `FROM` or `WHERE` clause.

### Example Tables

#### 1. Original Table

| category | value |
|----------|-------|
| A        | 10    |
| B        | 20    |
| A        | 15    |
| B        | 5     |
| A        | 25    |


#### 2. Grouped View (Before Aggregation)

| category | value |
|----------|-------|
| A        | 10    |
| A        | 15    |
| A        | 25    |
| B        | 20    |
| B        | 5     |

#### 3. Aggregated Result (`SUM()`)

| category | total_value |
|----------|-------------|
| A        | 50          |
| B        | 25          |

### Syntax

```sql
SELECT category_column, AGG(data_column)
FROM table_name
GROUP BY category_column;
```

> In the `SELECT` clause, every column must either:

> - **Use an aggregate function (like `SUM()`, `AVG()`, etc.), or**

> - **Be listed in the `GROUP BY` clause**

#### Example:

```sql
SELECT company, division, SUM(sales)
FROM finance_table
GROUP BY company, division;
```

[See GROUP BY examples ➤](https://github.com/nataliapaulino/byte-by-byte/blob/main/sql/01_basics/08_group_by.sql)

<br>

## `HAVING`
The `HAVING` clause is used to filter grouped results after aggregation.

Unlike `WHERE`, which filters rows before aggregation, `HAVING` works after values have been grouped.

#### Example:

```sql
SELECT company, SUM(sales)
FROM finance_table
GROUP BY company
HAVING SUM(sales) > 1000;
```

[See HAVING examples ➤](https://github.com/nataliapaulino/byte-by-byte/blob/main/sql/01_basics/09_having.sql)

> **Note:** You can't use `WHERE` to filter aggregated results — use `HAVING` instead.
