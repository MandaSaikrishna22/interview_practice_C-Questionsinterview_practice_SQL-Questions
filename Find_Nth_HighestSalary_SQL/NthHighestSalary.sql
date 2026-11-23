--This query uses a correlated subquery—meaning the inner query depends on the outer query (e1.salary) and runs once for every single row in the Employee table.

--The core logic is simple: the 2nd highest salary is the one that has exactly 2 salaries greater than or equal to it (the 1st highest salary, and itself).



  select *from Employee e1 --OUTER QUERY
  where 2=
  (select COUNT(distinct e2.salary) --INNER QUERY
  from Employee e2 where e2.salary >=e1.salary
  );



--  static void Main(string[] args)
--{
--    int[] arrSalary = {1000,2000,3000,2000,5000,6000,3000 };
--    int SecondHighest = 2;//second highest

    
--	If you also wanted the C# mental model updated for DISTINCT: C#

--    foreach (int i in arrSalary)
--    {
--        // Create a fresh HashSet for each salary 'i'
--        HashSet<int> distinctsalary = new HashSet<int>();
--        foreach (int j in arrSalary) 
--        {
--            if (j >= i)
--            {
--                distinctsalary.Add(j);
--            }
--        }
--        if (distinctsalary.Count == SecondHighest)
--        {
--            Console.WriteLine(i);
--            break;
--        }

--    }
--}
