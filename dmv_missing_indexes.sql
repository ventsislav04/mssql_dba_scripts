--SQL Server 2012/2014
select gs.user_seeks, gs.user_scans, gs.last_user_seek, gs.last_user_scan, gs.unique_compiles, id.equality_columns,  id.[statement]
from sys.dm_db_missing_index_group_stats gs
join sys.dm_db_missing_index_groups g
on g.index_group_handle = gs.group_handle
join sys.dm_db_missing_index_details id
on id.index_handle = g.index_handle
order by gs.user_seeks desc
