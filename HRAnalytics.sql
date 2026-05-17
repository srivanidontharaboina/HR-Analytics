select * 
From Employee_insights;

---Average Salaries
select Round(Avg(Current_Salary),2) as Avg_Salary from Employee_insights;

---average salary for "active" headcount as of a cut-off date.

Select Round(Avg(Current_Salary),2) as Avg_salary from Employee_insights
where HireDate <= '2014-12-02' and Remains_Employed ='1';

---Avg Tenur (years)
select Round(AVg(cast(TernureMonths as Float)) /12.0 , 2) as AvgTenureyears from Employee_insights;

---Avg Employee rating
select Avg(Current_Employee_Rating) as Employee_Rating from Employee_insights; 

---Total Employees

SELECT COUNT(DISTINCT EmployeeID) AS EmployeeCount
FROM Employee_insights
WHERE HireDate <= '2014-12-02'
  AND Remains_Employed = '1';

  ---Resigned Employees

select Count(Distinct EmployeeID) As EmployeeCount
from Employee_insights
where Remains_Employed ='0';

  --- Total Salary Cost
  select Sum(Current_Salary) as TotalCost from Employee_insights;

  --- Total Leave Balance

select Sum(Leave_Balance) as LeaveBalance from Employee_insights;

---Total Hired 

Select Count(Distinct EmployeeID) as TotalHired From Employee_Insights;

---Total Service tenor
Select sum(TenureDays) as Totalservicetenor from Employee_insights;

---Total Sick Days

select sum(Sick_Days_Last_12_Mths) as TotalSickDays 
from Employee_insights
Where Year(HireDate)=2013;