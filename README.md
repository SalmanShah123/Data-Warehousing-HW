# Data-Warehousing-HW
Thanks for going through my Project Repo, Professor! 

This repo holds 6 files as part of my deliverables for this project. This readme file will take you through the contents of each file and my journey doing both HW Assignments 1 and 2.

Data Source: https://catalog.data.gov/dataset/motor-vehicle-collisions-crashes 

1) Data Dictionary: I created this data dictionary from scratch, describing each column in my initial dataset along with their data type and relevance. I also conducted the first iteration of the dimensional modeling in the second tab.

2) Dimensional Modeling: This dbs file contains the dimensional model including the facts and dimension tables in the Star Schema format. 

3) HWextracttostaging: This file contains the Python code used to extract the data from the source and upload it into my cloud database of Microsoft Azure. 

4) HW-DW-Code: This file contains the SQL code used to create the Fact & Dimension Tables for the Data Warehouse. It was extracted through DBSchema and executed in DataGrip.

5) HW_MVCrashes_ETL: This file contains the Python code used to extract the dataset stored in the cloud, run major transformations, and create the facts & dimension tables, then load the data into the Data Warehouse hosted on Azure.

6) HW-Visuals: PowerBI file which is connected to my DW and contains a 6-page report with different visuals analyzing and serving the data
