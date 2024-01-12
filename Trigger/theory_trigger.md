A trigger is a set of SQL statements, that is executed automatically in response to a specified event 
including INSERT, UPDATE, or DELETE on a particular table.

#### Advantages of triggers 
1. Triggers provide another way to check the integrity of data.
2. Triggers handle errors from the database layer.
3. Triggers give an alternative way to run scheduled tasks. By using triggers, you don’t have to wait for the scheduled events to run because the triggers are invoked automatically before or after a change is made to the data in a table.
4. Triggers can be useful for auditing the data changes in tables.

#### Disadvantages of triggers
1. Triggers can only provide extended validations, not all validations. For simple validations, you can use the NOT NULL, UNIQUE, CHECK and FOREIGN KEY constraints.
2. Triggers can be difficult to troubleshoot because they execute automatically in the database, which may not be visible to the client applications.
3. Triggers may increase the overhead of the MySQL server.