--QUERY TO DELETE DUPLICATES FROM A TABLE

with CTE as(
SELECT 
    emp_id,
    first_name,
    last_name,
    ROW_NUMBER() OVER (PARTITION BY first_name, last_name ORDER BY salary) AS RowNum
FROM Employee)
Delete from CTE 
where  rownum>1

