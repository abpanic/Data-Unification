## Project Description
Financial-Data-Unification is a project that helps users to import data from multiple sources such as Excel, MS SQL Server, and MySQL databases into a single target database. The project uses SQL Server Integration Services (SSIS) as the primary tool for data integration, but it also provides an alternate method using Apache NiFi. The project aims to simplify the process of unifying financial data from multiple sources, which is a common challenge faced by financial analysts and data scientists.

## Installation
To install Financial-Data-Unification, you must have SQL Server Integration Services and Apache NiFi installed on your machine. You can download SQL Server Integration Services from the Microsoft website, and Apache NiFi can be downloaded from the Apache NiFi website. Once you have installed these tools, you can clone the repository from GitHub and open the project in Visual Studio or any other IDE that supports SSIS.

## Usage
The Financial-Data-Unification project can be used to import financial data from Excel, MS SQL Server, and MySQL databases into a single target database. To use the project, follow these steps:

* Open the SSIS package or NiFi flow in Visual Studio or NiFi respectively.
* Configure the connection managers for the source and target databases.
* Modify the package or flow to customize the data import process if necessary.
* Execute the package or flow to import data into the target database.

## Supported Data Sources
The Financial-Data-Unification project supports the following data sources:

* Excel spreadsheets (XLS, XLSX)
* MS SQL Server databases
* MySQL databases
The project requires the appropriate ODBC or JDBC drivers to connect to these data sources. The data sources must also be accessible from the machine where the project is installed.

## Technical Details
The Financial-Data-Unification project is primarily implemented using SQL Server Integration Services (SSIS) and Apache NiFi. The SSIS package uses data flow components such as the OLE DB Source, Excel Source, and ADO.NET Destination to import data from the source databases and load it into the target database. The Apache NiFi flow uses processors such as GetSQL, QueryDatabaseTable, and PutSQL to achieve the same functionality.

## Contributing
Contributions to the Financial-Data-Unification project are welcome. To contribute, follow these steps:

1. Fork the repository on GitHub.
2. Create a new branch for your changes.
3. Make changes to the code or documentation.
4. Submit a pull request with a detailed description of your changes.

## Credits
The Financial-Data-Unification project is maintained by Abhilash Panicker. It uses the following external libraries:

* Apache NiFi
* NPOI
* Newtonsoft.Json

## License
The Financial-Data-Unification project is licensed under the MIT license. See the LICENSE file for details.

## Contact
To report bugs or provide feedback, please contact Abhilash Panicker at https://dbugr.vercel.app/contact

## References
* [SQL Server Integration Services documentation](https://learn.microsoft.com/en-us/sql/integration-services/integration-services-developer-documentation?view=sql-server-ver16)
* Apache NiFi documentation[https://nifi.apache.org/docs.html]
* ODBC Driver for MySQL[https://dev.mysql.com/downloads/connector/odbc/]
* JDBC Driver for SQL Server[https://learn.microsoft.com/en-us/sql/connect/jdbc/microsoft-jdbc-driver-for-sql-server?view=sql-server-ver16]



