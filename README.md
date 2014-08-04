FW1-DI1-Application-Generator
=============================
This code generator uses Sean Corfield's Framework One and Direct Inject One to create a complete CRUD application by reading your database tables (developed and tested with Microsoft SQL Server only).  In addition to the standard Bean, Controller, Service, and DAO for each table, this generator will also create the Application.cfc file, default layout and several table specific views including a data table using jQuery DataTable, view, create and update pages as well as a combination view/update page.  The layout of the pages and elements is done using PureCSS (http://www.purecss.io).  

Database Creation and Conventions
=============================
A few conventions have been included to help decrease the post generation modifications.  All tables must have a single primary key (either int or uniqueidentifyer [aka guid]) defined within sql server. All primary keys will be included on the update pages as hidden fields.

Table and field names should be in capitol or camel case without special characters between the words.  Menu items and form labels are generated from these fields; thus, a database column "socialSecurityNumber" will have a form label of "Social Security Number".

Any field of a table that includes the word "Name" (case sensitive) will be treated as the title record.  For example the title on a view page with two fields titled "firstName" and "lastName" will show a title using the values of the first and last name fields.  For the title of a book name the column "bookName" to have the title of the book treated as the title of the record.
