# Crowdfunding_ETL
## Project 2 - Crowdfunding ETL

<img align="right" width="450" height="300" src="https://github.com/molleighH/Crowdfunding_ETL/blob/main/Resources/Images/crowdfunding.jpg?raw=true">

### Instructions 
The instructions for this mini project are divided into the following subsections:
1. **Create the Category and Subcategory DataFrames**
2. **Create the Campaign DataFrame**
3. **Create the Contacts DataFrame**
4. **Create the Crowdfunding Database**

#### 1. Create the Category & Subcategory DataFrames
* Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:
    * A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
    * A "category" column that contains only the category titles
    * The following image shows this category DataFrame:

<p align="center">
<img src="https://github.com/molleighH/Crowdfunding_ETL/blob/main/Resources/Images/category_DataFrame.png?raw=true" width="275" height="400" border="10"/>
</p>

* Export the category DataFrame as category.csv and save it to your GitHub repository.

* Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:

    * A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
    * A "subcategory" column that contains only the subcategory titles
    * The following image shows this subcategory DataFrame:

<p align="center">
<img src="https://github.com/molleighH/Crowdfunding_ETL/blob/main/Resources/Images/subcategory_DataFrame.png?raw=true" width="275" height="400" border="10"/>
</p>

* Export the subcategory DataFrame as subcategory.csv and save it to your GitHub repository.


#### 2. Create the Campaign DataFrame

* Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:

    * The "cf_id" column
    * The "contact_id" column
    * The "company_name" column
    * The "blurb" column, renamed to "description"
    * The "goal" column, converted to the float data type
    * The "pledged" column, converted to the float data type
    * The "outcome" column
    * The "backers_count" column
    * The "country" column
    * The "currency" column
    * The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
    * The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
    * The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
    * The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
    * The following image shows this campaign DataFrame:

<p align="center">
<img src="https://github.com/molleighH/Crowdfunding_ETL/blob/main/Resources/Images/campaign_DataFrame.png?raw=true" width="1100" height="400" border="10"/>
</p>

* Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.

#### 3. Create the Contact DataFrame

1. Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:
    * **Option 1:** Use Python dictionary methods.
    * **Option 2:** Use regular expressions.

2. If you chose Option 1, complete the following steps:
    2. Import the contacts.xlsx file into a DataFrame.
    2. Iterate through the DataFrame, converting each row to a dictionary.
    2. Iterate through each dictionary, doing the following:
        2. Extract the dictionary values from the keys by using a Python list comprehension.
        2. Add the values for each row to a new list.
    2. Create a new DataFrame that contains the extracted data.
    2. Split each "name" column value into a first and last name, and place each in a new column.
    2. Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.

3. If you chose Option 2, complete the following steps:
    3. Import the contacts.xlsx file into a DataFrame.
    3. Extract the "contact_id", "name", and "email" columns by using regular expressions.
    3. Create a new DataFrame with the extracted data.
    3. Convert the "contact_id" column to the integer type.
    3. Split each "name" column value into a first and a last name, and place each in a new column.
    3. Clean and then export the DataFrame as contacts.csv and save it to your GitHub repository.

4. Check that your final DataFrame resembles the one in the following image:

<p align="center">
<img src="https://github.com/molleighH/Crowdfunding_ETL/blob/main/Resources/Images/contact_DataFrame_final.png?raw=true" width="700" height="600" border="10"/>
</p>

#### 4. Create the Crowdfunding Database

* Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site..
* Use the information from the ERD to create a table schema for each CSV file.
    * **Note:** Remember to specify the data types, primary keys, foreign keys, and other constraints.
* Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.
* Create a new Postgres database, named crowdfunding_db.
* Using the database schema, create the tables in the correct order to handle the foreign keys.
* Verify the table creation by running a SELECT statement for each table.
* Import each CSV file into its corresponding SQL table.
* Verify that each table has the correct data by running a SELECT statement for each.

