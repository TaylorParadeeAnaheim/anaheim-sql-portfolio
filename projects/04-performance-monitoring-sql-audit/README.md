# Performance Monitoring SQL Audit

This project simulates an internal database performance audit for the enQuesta CIS system used by Anaheim Public Utilities. It highlights how to identify long-running or excessively executed SQL statements, which can degrade system performance — especially in a production Oracle environment.

## Context

From a real-world incident (1085), a query executed over 1.6 million times per hour caused slowdowns across the system. This project recreates how an analyst might identify, audit, and begin to troubleshoot problematic SQL behavior using Oracle system views.

## Objectives

- Identify high-frequency or slow SQL queries
- Investigate SQL performance via Oracle AWR/ASH and system views
- Propose solutions or follow-up analysis steps
- Present performance metrics like executions per second and average response time

## Data Sources Simulated

- `V$SQL`
- `V$SQLAREA`
- `DBA_HIST_SQLSTAT`
- `V$SESSION`
- `V$ACTIVE_SESSION_HISTORY`

## Query Script

See `audit_query.sql` for the SQL used to generate performance diagnostics.

## Example Report Output

See `performance_report_sample.txt`.

## Tools Used

- Oracle SQL
- System catalog views
- Performance monitoring scripts
