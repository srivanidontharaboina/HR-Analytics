# HR Analytics SQL Project

## Overview

This project contains SQL queries for analyzing employee and HR-related data from the `Employee_insights` table. The queries help generate key HR metrics such as employee count, salary analysis, tenure, employee ratings, leave balances, and resignation statistics.

The SQL script is designed for HR analytics reporting and workforce insights.

---

# File Included

* `HRAnalytics.sql` — Contains all SQL queries used for HR data analysis.

---

# Database Table Used

## `Employee_insights`

The project assumes the existence of an HR dataset table named:

```sql
Employee_insights
```

### Sample Columns Used

| Column Name             | Description                                  |
| ----------------------- | -------------------------------------------- |
| EmployeeID              | Unique employee identifier                   |
| Current_Salary          | Current salary of employee                   |
| HireDate                | Employee hiring date                         |
| Remains_Employed        | Employment status (1 = Active, 0 = Resigned) |
| TernureMonths           | Employee tenure in months                    |
| TenureDays              | Employee tenure in days                      |
| Current_Employee_Rating | Employee performance rating                  |
| Leave_Balance           | Remaining leave balance                      |
| Sick_Days_Last_12_Mths  | Sick leave taken in the last 12 months       |

---

# SQL Queries Included

## 1. View Employee Data

```sql
select *
From Employee_insights;
```

Displays all employee records.

---

## 2. Average Salary

```sql
select Round(Avg(Current_Salary),2) as Avg_Salary
from Employee_insights;
```

Calculates the average salary of employees.

---

## 3. Average Salary of Active Employees

```sql
Select Round(Avg(Current_Salary),2) as Avg_salary
from Employee_insights
where HireDate <= '2014-12-02'
and Remains_Employed ='1';
```

Calculates the average salary for active employees as of a specific cutoff date.

---

## 4. Average Tenure (Years)

```sql
select Round(AVg(cast(TernureMonths as Float)) /12.0 , 2)
as AvgTenureyears
from Employee_insights;
```

Calculates the average employee tenure in years.

---

## 5. Average Employee Rating

```sql
select Avg(Current_Employee_Rating) as Employee_Rating
from Employee_insights;
```

Returns the average employee performance rating.

---

## 6. Total Active Employees

```sql
SELECT COUNT(DISTINCT EmployeeID) AS EmployeeCount
FROM Employee_insights
WHERE HireDate <= '2014-12-02'
  AND Remains_Employed = '1';
```

Counts total active employees.

---

## 7. Resigned Employees

```sql
select Count(Distinct EmployeeID) As EmployeeCount
from Employee_insights
where Remains_Employed ='0';
```

Counts total resigned employees.

---

## 8. Total Salary Cost

```sql
select Sum(Current_Salary) as TotalCost
from Employee_insights;
```

Calculates total salary expenditure.

---

## 9. Total Leave Balance

```sql
select Sum(Leave_Balance) as LeaveBalance
from Employee_insights;
```

Returns total remaining leave balance.

---

## 10. Total Employees Hired

```sql
Select Count(Distinct EmployeeID) as TotalHired
From Employee_Insights;
```

Counts total employees hired.

---

## 11. Total Service Tenure

```sql
Select sum(TenureDays) as Totalservicetenor
from Employee_insights;
```

Calculates total employee service duration.

---

## 12. Total Sick Days

```sql
select sum(Sick_Days_Last_12_Mths) as TotalSickDays
from Employee_insights
Where Year(HireDate)=2013;
```

Calculates total sick days taken by employees hired in 2013.

---

# Features

* HR workforce analytics
* Employee salary analysis
* Employee retention analysis
* Leave and attendance tracking
* Employee performance insights
* Tenure analysis

---

# Technologies Used

* SQL
* Relational Database Management System (RDBMS)

---

# How to Use

1. Import the HR dataset into your SQL database.
2. Open the `HRAnalytics.sql` file.
3. Run the queries individually or as a complete script.
4. Analyze HR metrics and insights.

---

# Use Cases

* HR dashboard reporting
* Workforce planning
* Employee retention analysis
* Payroll analysis
* Attendance and leave management

---

# Author

Created for HR Analytics and Employee Insights reporting using SQL Project by Srivani dontharaboina
