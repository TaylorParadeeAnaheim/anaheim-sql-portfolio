# Account Assistance Summary Report

This project simulates a utility billing report for Anaheim Public Utilities, summarizing financial assistance and account data for multifamily units across specified addresses. This type of report would typically be requested by senior management or community outreach for City Council updates or post-community meeting follow-ups.

## Report Objectives

For each unit at the listed addresses:
- List electric account numbers and addresses
- Calculate the average electric consumption over the past 12 months
- Show past due balance
- Identify if LIHEAP, CAPP, EAP, or IQ discounts were applied
- Include any third-party assistance payments in the past 12 months

## Data Sources Simulated

- `CICUSTOMERACCOUNT`
- `CIBILLHISTORY`
- `CIASSISTANCEPROGRAMS`
- `CIADDRESS`
- `CICONSUMPTION`

This is a simulated example using mocked SQL and structure modeled after Oracle-based enQuesta systems.

## SQL Query

See `query.sql` for the main report logic.
