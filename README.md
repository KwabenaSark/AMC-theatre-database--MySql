# AMC-theatre-database--MySql
## A critical evaluation using the Rolfe D model
### What(Description) 
Considering all the factors for this, I was required to demonstrate my understanding of this model by producing a database for a company of my choosing. My chosen company ‘AMC theatre’ is theatre chain company. An example of the type of data it holds are; customers, payments and tickets. Some of its transactions are; Recording movies details and Keeping and tracking payment details.
Information was gathered from multi- sources to identify its data, transactions and entities. Furthermore, an ER diagram was produced to structure how the database will be designed and finally, data was inputted into the created database. 



### So What(Analysis)
An analysis on AMC theatre is that its database transaction enables it to carry out and group tasks that permit precise data recovery in the event of system failures and to offer separation between various programs that might attempt to access the data concurrently.
### Now What(Action plan)
AMC theatre is still growing and expanding into more countries across the world, the best course of action is to have cloud data warehouse that will be able to keep up with the demand and still be fast and reliable.

### Introduction
AMC (American Multi- Cinema) is a movie theatre chain which was established in 1920 by Maurice Edward and Barney Dubinsky. AMC is the largest movie theatre chain in the world with over 353 __theatres__ in Europe and 600 in North America. The company hosts around 200 million __customers__ each year in its industry leading theatres which is accompanied with an amazing customer service from its __employees__ AMC, amongst with its parent company The Wanda Group also offer foods and drinks for the customer, all forms of __payments__ are done at the counter. 
AMC has continued to revolutionize the cinema industry with its introduction of online __tickets__ whereby customers can make __reservations__ to the showings of any __movie__ they want to watch , the systems also allows AMC to __scheduled__ their movies. Furthermore, the introduction of 3D and augmented reality technologies has enabled AMC to invest in new cinema watching experiences such as 4D __seats__ , which immerse the customers into the movie.
AMC also offer __special screening__ for big Hollywood studios such as Disney and Universal studios
By concentrating on its customers and offering the greatest possible movie-going experience, AMC has maintained its position as the industry leader.


#### Entities
* Customers
* Tickets
* Reservation
* Movies
* Schedule
* Special screening
* Employees
* Seats
* Theatre
* Payments



#### Data Requirements of AMC
Below is some of the data required by AMC;
*	Booking details of all customer at AMC
*	Storing details of all movies being showed at AMC





#### Transaction carried out by AMC  
*	Allocation of employee duties
*	Adding customer booking details
*	Keeping and tracking payment details
*	Recording movie start and end time
*	Recording movies details








### ER diagram for AMC
![alt text](https://github.com/kwabenasark/AMC-theatre-database--MySql/ERD.png "Logo Title Text 1")
 

#### Data Dictionary
##### Customers
Column	Data Type	Null Default	Default
Customer_ID (PK)	Int(11)	No	
Customer_email	Varchar(30)	Yes	Null
Phone_no	Varchar(30)	Yes	Null
Age	Varchar(30)	Yes	Null


##### Tickets
Column	Datatype	Null Default	Default
Ticket_ID (PK)	Int(11)	No	
Price	Varchar(30)	Yes	Null
Theatre_ID (FK)	Int(11)	No	
Employee_ID (FK)	Int(11)	No	
Seat_ID (FK)	Int(11)	No	
Showing_ID (FK)	Int(11)	No	
Show_date	Varchar(30)	Yes	Null


##### Reservation
Column	Datatype	Null Default	Default
Reservation_ID (PK)	Int(11)	No	
Reservation_date	Date	Yes	Null
Ticket_ID	Int(11)	No	
Customer_ID	Int(11)	No	



##### Movies
Column	Datatype	Null Default	Default
Movies_ID (PK)	Int(11)	No	
Movie_name	Varchar(30)	Yes	Null
Genre	Varchar(30)	Yes	Null
Ratings	Varchar(30)	Yes	Null

##### Schedules
Column	Datatype	Null Default	Default
Schedule_ID (PK)	Int(11)	No	
Start_time	Time	Yes	Null
End_time	Time	Yes	Null
Language	Varchar(30)	Yes	Null




##### Special screening
Column	Datatype	Null Default	Default
Special_screening_ID (PK)	Int(11)	No	
SS_Name	Varchar(30)	Yes	Null
Type	Varchar(30)	Yes	Null

##### Employees
Column	Datatype	Null Default	Default
Employee_ID (PK)	Int(11)	No	
Employee_name	Varchar(30)	Yes	Null
Email	Varchar(30)	Yes	Null
Phone_no	Varchar(30)	Yes	Null
Address	Varchar(30)	Yes	Null


##### Seats
Column	Datatype	Null Default	Default
Seat_ID (PK)	Int(11)	No	
Row_no	Varchar(30)	Yes	Null
Theatre_ID (FK)	Int(11)	No	

##### Theatre
Column	Datatype	Null Default	Default
Theatre_ID (PK)	Int(11)	No	
Theatre_name	Varchar(30)	Yes	Null
Location	Varchar(30)	Yes	Null

##### Payments
Column	Datatype	Null Default	Default
Payment_ID (PK)	Int(11)	No	
Customer_ID (FK)	Int(11)	No	
Date	Date	Yes	Null
Payment_desc	Varchar(30)	Yes	Null



### Normalization
Normalization is a database technique used to reduce data redundancy and improve data integrity. This is important because, it removes anomalies that make a database inconsistent and ensures only related data is stored in each table of the database.
1.	1st Normalization form (1NF) – The goal of this stage is to place all repeating fields into separate files and assign appropriate keys. All the entities listed previously are in the 1NF because;
* Each table has a primary key 
*	No single column has more than one value
*	All non-primary key elements are dependent on the primary key 


2.	2nd Normalization form (2NF)- In this stage, all non-key elements, that are fully specified by something other than the complete keys are placed in a separate table. These non-key elements are normally dependent. All the entities listed previously are in the 2NF because;
*	The tables complies with the 1NF (1st normalization table)
*	All composite key’s qualities affect non-primary key attributes 

3.	3rd Normalization form (3NF) – This stage enables for the eliminating redundant data elements and tables that are subsets of other tables. All the entities listed previously are in the 2NF because;
*	The tables complies with the 2NF (2nd  normalization table)
*	An entry in one key column does not affect any of the nonprimary key attributes in a row.


#### How normalisation is used to check tables are well-structured
By ensuring that each table meets the criteria for "well-formed relational structures" normalization aims to achieve the following results:
*	Every table depicts a single entity 
*	No unnecessarily repetition of data items. 
*	All nonprimary key element are functionally dependent on the primary key
*	No insertion, update, or delete irregularities exist in any of the tables.
*	Elimination of repeating data

#### how normalisation solves the problem of update anomalies
When data in a single row of a table is modified, and it becomes incompatible with its identical data in another row, as a result of this an update anomaly has occurred. 
“For example, if an Employee changes address, AMC would have to update all rows referring to that address.”
Normalization solves this problem by breaking down tables to remove anomalies and redundant data. The data is organized such that, there are no unnecessary duplicates and that it is easy to find all relevant information. Data is transformed into tabular form using a multi-step procedure that also purges relational tables of redundant data and anomalies.


















#### Evalaution on how the database met the data requirements and possible transactions of AMC Theatre
1.	The database will allow AMC keep records on its employees and customers
2.	The database will allow AMC to keep track of payments 
3.	Booking details of all customer at AMC
4.	Storing details of all movies being showed at AMC


#### how the logical and physical design processes have been implemented 

Logical design	Physical Design 
The AMC theatre database is made with a specific goal in mind, such as;
1.	Meeting AMC transaction requirements
 
2.	Identifying entities, attributes and the relationships between then

3.	ER diagram 




Such information is used in the initial stage of the logical design representing the task that will be performed with the database and also  structures the database	From the logical design ,it provides a data model implementation tailored for AMC theatre physical design. This being the;
1.	Primary key and foreign key
2.	Datatypes ,lengths assigned and default values
3.	Tables and columns






It is employed to depict the underlying logical structure of the  databases and data files.

 logical database design to physical design mapping

*	Entities are converted into tables

*	Attributes are converted into columns

*	creating data types and constraints from domains


#### How tables have been designed for AMC database
The database tables of AMC theatre are designed by the following process;
1.	Finding the purpose of the database- for AMC the purpose of its database is to keep records of its processes 
2.	Gather information on AMC -  All kinds of information about AMC theatre is gather for the next step

3.	The information gathered is separated into entities such as employees, tickets etc.


4.	The entities are now given attributes. Each attribute is converted to a field and shown as a column in the table.

5.	Each table is given a primary key and appropriate foreign key


6.	If more information is needed to understand the relationships between the tables, more fields are added to the tables or new once are made.

7.	Lastly the normalization rules is used to ensure all the tables are appropriate.





#### Identified derived data
To provide fresh insights, existing data points are transformed to produce derived data. For example combining Ticket sales data to customer data . 
Represented below
```MySQL
Select tickets.ticket_id, customers.id, customers.age
From tickets
Inner join customers
On tickets.ticket_id =customers.customer_id 
Order by age;
```

#### Potential Change that could be implemented into AMC theatre database;
As the Covid-19 vaccination are being administrated to the public, AMC should be able to keep track of which customers are vaccinated and which ones are not, so as to not further spread the virus. As a result of this, vaccinated customers can enjoy the theatre without a mask and unvaccinated will have to proceed with a mask. By Adding an extra column to the customers table in the AMC database, they will be able to keep records of Vaccinated and unvaccinated customers.
##### Rationale
Adding a ‘Vaccination’ column to the customers table will enable AMC to easily categorize their vaccinated and unvaccinated customers in the database of AMC and also for their safety.
##### Demonstration 
using the alter command to change the initial database tables
```MySQL
Alter Table customers
Add vaccination varchar(30);
```

















