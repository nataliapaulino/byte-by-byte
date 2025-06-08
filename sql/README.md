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
