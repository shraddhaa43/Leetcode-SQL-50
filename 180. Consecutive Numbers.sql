# Table: Logs

# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | id          | int     |
# | num         | varchar |
# +-------------+---------+
# id is the primary key for this table.
# id is an autoincrement column.
 

# Write an SQL query to find all numbers that appear at least three times consecutively.

# Return the result table in any order.

# The query result format is in the following example.

 

# Example 1:

# Input: 
# Logs table:
# +----+-----+
# | id | num |
# +----+-----+
# | 1  | 1   |
# | 2  | 1   |
# | 3  | 1   |
# | 4  | 2   |
# | 5  | 1   |
# | 6  | 2   |
# | 7  | 2   |
# +----+-----+
# Output: 
# +-----------------+
# | ConsecutiveNums |
# +-----------------+
# | 1               |
# +-----------------+
# Explanation: 1 is the only number that appears consecutively for at least three times.

select distinct a.num AS ConsecutiveNums
from logs as a
inner join logs as b on a.id + 1 = b.id
inner join logs as c on b.id + 1 = c.id
where a.num=b.num 
and b.num=c.num