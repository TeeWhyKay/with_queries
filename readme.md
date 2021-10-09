# How to use 'with' query aka Common Table Expressions
WITH provides a way to write auxiliary statements for use in a larger query. Think of them as supporting your queries.
These statements, which are often referred to as Common Table Expressions or CTEs,
can be thought of as defining temporary tables that exist just for one query.
Each auxiliary statement in a WITH clause can be a SELECT, INSERT, UPDATE, or DELETE;
 and the WITH clause itself is attached to a primary statement that can also be a SELECT, INSERT, UPDATE, or DELETE.

In this specific case, it prevents you from writing chained nested subqueries and makes your SQL query much more readable.

# Problem
There are three tables, country, city and customers.
One country can have many cities. A city belongs to a country.
One city can have many customers and a customer belongs to a city.

Find the cities that have more number of customers than the average number of customers across all cities.

# Approach

1. Find out what's the average number customers across all cities.
2. Select cities where their number of customers is higher than the average found in 1.
