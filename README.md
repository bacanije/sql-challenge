# sql-challenge

# Background
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.
For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

# Instructions

This Challenge is divided into three parts: data modeling, data engineering, and data analysis.

Data Modeling

Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. To create the sketch, feel free to use a tool like QuickDBDLinks to an external site.

Data Engineering
1.	Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:
 - Remember to specify the data types, primary keys, foreign keys, and other constraints.
 - For the primary keys, verify that the column is unique. Otherwise, create a composite keyLinks to an external site., which takes two primary keys to uniquely identify a row.
 - Be sure to create the tables in the correct order to handle the foreign keys.

2. Import each CSV file into its corresponding SQL table.

Findings:
There are 6 complete CSV datasets used for this challenge
- Two of the tables were identified as the main tables: departments and employees
- All other tables had a key relation to the two main tables
- both 'dept_no'and 'emp_no' were set as primary key
- Due to its fixed length: dept_no, nept_name, emp_title_id, sex, title_id were set as VARCHARS
- The other strings with a variable length were set to DATE or TEXT
   
Data Analysis
1.	List the employee number, last name, first name, sex, and salary of each employee.
   - Total: 300,024
2.	List the first name, last name, and hire date for the employees who were hired in 1986.
   - Total: 36,150
3.	List the manager of each department along with their department number, department name, employee number, last name, and first name.
   - Marketing: 2
  	- Finance: 2
  	- Human Resources: 2
  	- Production: 4
  	- Development: 2
  	- Quality Management: 4
  	- Sales: 2
  	- Research: 2
  	- Customer Service: 4
4.	List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
   - Total: 331,603
5.	List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
   - Total: 20, First name: Hercules, Last Name: Starts w/ 'B', 10 - Females, 10 - Males
6.	List each employee in the Sales department, including their employee number, last name, and first name.
   - Total: 52,245
7.	List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
   - Total:137,952
8.	List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
   - Total: 1638 last names
  	- Most: Baba = 226
  	o Least: Foolsday = 1

