--the time stamp datetype is used for the values that contain both date and time parts

TIME HH:MI:SS
DATE YYYY-MM-DD
YEAR YYYY OR YY
TIMESTAMP YYYY-MM-DD HH-MI-SS

TIMESTAMPTZ -- CONTAINS DATE TIME AND TIMEZONE ALSO


---FUNCTIONS
SHOW TIMEZONE --ASIA / CALCUTTA

SELECT NOW() -- GIVES  date time in ms also  and the time zone

SELECT TIMEOFDAY() --Mon Mar 31 22:47:59.070626 2025 IST

SELECT CURRENT_TIME --22:48:23.145648+05:30

SELECT CURRENT_DATE  --date only
