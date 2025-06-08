#  SQL Reference Guide

This repository is intended as a study guide for learning SQL. 

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