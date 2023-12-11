# Crowdfunding_ETL
## Project 2 - Crowdfunding ETL

<img align="right" width="250" height="150" src="https://github.com/molleighH/Crowdfunding_ETL/blob/main/Resources/Images/crowdfunding.jpg?raw=true">

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
<img src="https://github.com/molleighH/Crowdfunding_ETL/blob/main/Resources/Images/campaign_DataFrame.png?raw=true" width="850" height="400" border="10"/>
</p>

