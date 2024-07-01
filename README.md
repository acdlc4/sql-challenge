# sql-challenge

With the use of the resources and tools of PostgreSQL / pgadmin and ![QuickDBD](https://app.quickdatabasediagrams.com/#/), the purpose of this project is to create a database of employees hired during the 1980s and 1990s at the fictional company, Pewlett Hackard, based on six CSV files.  The design of the SQL database holds all the data imported from the CSV files and is capable of being queried accordingly.

Limitations and/or factors involved in the analysis include the following (below list is not exhaustive):

- Manager employee numbers (i.e. ‘emp_no’) in ‘dept_manager’ table are not necessarily indicated as managers per ‘employees’ table in a ‘emp_title_id’ lookup against ‘title_id’ in ‘titles’ table
- Employees can belong to more than one department (i.e. ‘emp_no’ listed in ‘dept_emp’ is greater than the unique ‘emp_no’ in ‘employees’)
- Specific order to import CSV files is noted in schematics script file, location provided below


#### Schematic Script location:
https://github.com/acdlc4/sql-challenge/blob/main/EmployeeSQL/schema.sql

#### Analysis/Query Script location:
https://github.com/acdlc4/sql-challenge/blob/main/sql-challenge/EmployeeSQL/Data_Analysis_Mod_9_Challenge.sql

#### ERD location:
https://github.com/acdlc4/sql-challenge/blob/main/sql-challenge/EmployeeSQL/E-R_Diagram.png

Any questions?

Feel free to send a message to acdlc4@gmail.com with any questions / comments / concerns. Inspiration and credit for any code used is from work done during my attendance in the 2024 Northwestern University Data Analysis Bootcamp class sessions.
