# AMI Type 3 Meter Address Report

## Project Overview

This project demonstrates an advanced SQL query to generate a report listing all addresses with AMI type 3 and L&G meters in the enQuesta database for Anaheim Public Utilities.

The report includes the following details for each customer:
- Customer Number
- Premise Number
- Service Address
- Additional Address Details
- Device Number

## Business Context

Someone has requested a detailed report of all locations using AMI type 3 meters to assess infrastructure deployment and billing patterns.

## SQL Query Description

The query joins multiple tables to extract meter device information, customer details, and premise addresses filtered for AMI type 3 meters with an active customer status.

## Files Included

- `query.sql` — Main SQL query for the report  
- `data-sample.txt` — Sample output with fictional data for demonstration  
- `README.md` — This project description

## How to Use

- Run the SQL query against the enQuesta database or a test environment with sample data.  
- Review the results and compare against sample output for validation.  
- Modify filters or join conditions based on specific reporting needs.

## Skills Demonstrated

- Complex multi-table JOINs  
- Use of DISTINCT and filtering by specific device types  
- Reporting and data extraction for utility systems
