-- Identify top SQL statements by number of executions in the past hour
SELECT 
    sql_id,
    parsing_schema_name,
    module,
    executions,
    elapsed_time / 1000000 AS elapsed_seconds,
    (elapsed_time / executions) / 1000 AS avg_ms_per_exec,
    sql_text
FROM 
    v$sqlarea
WHERE 
    last_active_time > SYSDATE - 1/24
ORDER BY 
    executions DESC
FETCH FIRST 10 ROWS ONLY;
-- Check which sessions are currently running that SQL
SELECT 
    s.sid,
    s.username,
    s.status,
    s.program,
    s.sql_id,
    q.sql_text
FROM 
    v$session s
JOIN 
    v$sql q ON s.sql_id = q.sql_id
WHERE 
    s.status = 'ACTIVE';
