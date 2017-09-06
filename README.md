# mysql
<p>
<span ><strong>
登录 ip
</strong></span>
mysql -h ip -P port -u user -p;
SHOW VARIABLES WHERE Variable_name = 'port';
</p>

<p>
<span ><strong>
<ul>mysql 开权限</ul>
</strong></span>
mysql> GRANT ALL PRIVILEGES ON *.* TO root@"%" IDENTIFIED BY "root";
mysql> flush privileges;
/etc/init.d/mysql stop
mysqld_safe --skip-grant-tables &
mysql -u root
use mysql;
update user set password=PASSWORD("NEW-ROOT-PASSWORD") where User='root';
flush privileges;
quit;

</p>

<p>
<span ><strong>
<ul>mysql backup</ul>
</strong></span>
$ mysqldump --opt -u [uname] -p[pass] [dbname] > [backupfile.sql]
[uname] Your database username
[pass] The password for your database (note there is no space between -p and the password)
[dbname] The name of your database
[backupfile.sql] The filename for your database backup
[--opt] The mysqldump option
e.g:
one database
$ mysqldump -u root -p Tutorials > tut_backup.sql
 more database
$ mysqldump -u root -p --databases Tutorials Articles Comments > content_backup.sql
 all database
$ mysqldump -u root -p --all-databases > alldb_backup.sql
--add-drop-table: Tells MySQL to add a DROP TABLE statement before each CREATE TABLE in the dump.
--no-data: Dumps only the database structure, not the contents.
--add-locks: Adds the LOCK TABLES and UNLOCK TABLES statements you can see in the dump file.

Back up your MySQL Database with Compress
$ mysqldump -u [uname] -p[pass] [dbname] | gzip -9 > [backupfile.sql.gz]
$ gunzip [backupfile.sql.gz]


Restoring your MySQL Database
$ mysql -u [uname] -p[pass] [db_to_restore] < [backupfile.sql]
e.g:
$ mysql -u root -p Tutorials < tut_backup.sql

$ mysql -u root -p
Enter password:
mysql> CREATE DATABASE metastore;
mysql> USE metastore;
mysql> SOURCE /usr/lib/hive/scripts/metastore/upgrade/mysql/hive-schema-n.n.n.mysql.sql;

</p>
<p>
<span ><strong>
<ul>//联合查询</ul>
</strong></span>
select 

show_time_segment, sum( cdn_size) cdn_size ,sum( p2p_pc_size) p2p_pc_size ,sum( p2p_tv_size) p2p_tv_size, sum( p2p_box_size) p2p_box_size ,sum( p2p_mo_size) p2p_mo_size,sum( cde_pc_size) cde_pc_size ,sum( cde_tv_size) cde_tv_size, sum( cde_box_size) cde_box_size ,sum( cde_mo_size) cde_mo_size, sum( lpsize) lpsize,sum(lcsize) lcsize,sum(lsize_cde) lsize_cde,sum(up_rtmfp) up_rtmfp,sum(up_cde) up_cde,sum( conn_node_times) conn_node_times ,sum( get_node_times) get_node_times ,sum( conn_cde_times) conn_cde_times ,sum( get_cde_times) get_cde_times ,sum( share_rep_count)share_rep_count, sum(act) act 

from 

(

select DATE_FORMAT(concat( (select date(time_stamp)),' ' , (select hour (time_stamp)) ) ,'%Y-%m-%d %H')show_time_segment  , sum( cdn_size) cdn_size ,sum( p2p_pc_size) p2p_pc_size ,sum( p2p_tv_size) p2p_tv_size, sum( p2p_box_size) p2p_box_size ,sum( p2p_mo_size) p2p_mo_size,sum( cde_pc_size) cde_pc_size ,sum( cde_tv_size) cde_tv_size, sum( cde_box_size) cde_box_size ,sum( cde_mo_size) cde_mo_size, sum( lpsize) lpsize,sum(lcsize) lcsize,sum(lsize_cde) lsize_cde,sum(up_rtmfp) up_rtmfp,sum(up_cde) up_cde,sum( conn_node_times) conn_node_times ,sum( get_node_times) get_node_times ,sum( conn_cde_times) conn_cde_times ,sum( get_cde_times) get_cde_times ,sum( share_rep_count)share_rep_count, sum(act) act from share_rate_vod_unicom where ( time_stamp >= date_format(' 2017-9-3 0:00:00 ', '%Y-%m-%d %H:%i:%s') and time_stamp <= date_format('2017-9-4 23:59:59','%Y-%m-%d %H:%i:%s') )  and (  ((select hour('time_stamp') ) >= 0  and (select hour('time_stamp') ) < 24)  ) and country=0  group by show_time_segment  

union all 

select DATE_FORMAT(concat( (select date(time_stamp)),' ' , (select hour (time_stamp)) ) ,'%Y-%m-%d %H')show_time_segment  , sum( cdn_size) cdn_size ,sum( p2p_pc_size) p2p_pc_size ,sum( p2p_tv_size) p2p_tv_size, sum( p2p_box_size) p2p_box_size ,sum( p2p_mo_size) p2p_mo_size,sum( cde_pc_size) cde_pc_size ,sum( cde_tv_size) cde_tv_size, sum( cde_box_size) cde_box_size ,sum( cde_mo_size) cde_mo_size, sum( lpsize) lpsize,sum(lcsize) lcsize,sum(lsize_cde) lsize_cde,sum(up_rtmfp) up_rtmfp,sum(up_cde) up_cde,sum( conn_node_times) conn_node_times ,sum( get_node_times) get_node_times ,sum( conn_cde_times) conn_cde_times ,sum( get_cde_times) get_cde_times ,sum( share_rep_count)share_rep_count, sum(act) act from share_rate_vod_telecom where ( time_stamp >= date_format(' 2017-9-3 0:00:00 ', '%Y-%m-%d %H:%i:%s') and time_stamp <= date_format('2017-9-4 23:59:59','%Y-%m-%d %H:%i:%s') )  and (  ((select hour('time_stamp') ) >= 0  and (select hour('time_stamp') ) < 24)  ) and country=0  group by show_time_segment  

union all 

select DATE_FORMAT(concat( (select date(time_stamp)),' ' , (select hour (time_stamp)) ) ,'%Y-%m-%d %H')show_time_segment  , sum( cdn_size) cdn_size ,sum( p2p_pc_size) p2p_pc_size ,sum( p2p_tv_size) p2p_tv_size, sum( p2p_box_size) p2p_box_size ,sum( p2p_mo_size) p2p_mo_size,sum( cde_pc_size) cde_pc_size ,sum( cde_tv_size) cde_tv_size, sum( cde_box_size) cde_box_size ,sum( cde_mo_size) cde_mo_size, sum( lpsize) lpsize,sum(lcsize) lcsize,sum(lsize_cde) lsize_cde,sum(up_rtmfp) up_rtmfp,sum(up_cde) up_cde,sum( conn_node_times) conn_node_times ,sum( get_node_times) get_node_times ,sum( conn_cde_times) conn_cde_times ,sum( get_cde_times) get_cde_times ,sum( share_rep_count)share_rep_count, sum(act) act from share_rate_vod_other where ( time_stamp >= date_format(' 2017-9-3 0:00:00 ', '%Y-%m-%d %H:%i:%s') and time_stamp <= date_format('2017-9-4 23:59:59','%Y-%m-%d %H:%i:%s') )  and (  ((select hour('time_stamp') ) >= 0  and (select hour('time_stamp') ) < 24)  ) and country=0  group by show_time_segment  

union all 

select DATE_FORMAT(concat( (select date(time_stamp)),' ' , (select hour (time_stamp)) ) ,'%Y-%m-%d %H')show_time_segment  , sum( cdn_size) cdn_size ,sum( p2p_pc_size) p2p_pc_size ,sum( p2p_tv_size) p2p_tv_size, sum( p2p_box_size) p2p_box_size ,sum( p2p_mo_size) p2p_mo_size,sum( cde_pc_size) cde_pc_size ,sum( cde_tv_size) cde_tv_size, sum( cde_box_size) cde_box_size ,sum( cde_mo_size) cde_mo_size, sum( lpsize) lpsize,sum(lcsize) lcsize,sum(lsize_cde) lsize_cde,sum(up_rtmfp) up_rtmfp,sum(up_cde) up_cde,sum( conn_node_times) conn_node_times ,sum( get_node_times) get_node_times ,sum( conn_cde_times) conn_cde_times ,sum( get_cde_times) get_cde_times ,sum( share_rep_count)share_rep_count, sum(act) act from share_rate_liv_unicom where ( time_stamp >= date_format(' 2017-9-3 0:00:00 ', '%Y-%m-%d %H:%i:%s') and time_stamp <= date_format('2017-9-4 23:59:59','%Y-%m-%d %H:%i:%s') )  and (  ((select hour('time_stamp') ) >= 0  and (select hour('time_stamp') ) < 24)  ) and country=0  group by show_time_segment  

union all 

select DATE_FORMAT(concat( (select date(time_stamp)),' ' , (select hour (time_stamp)) ) ,'%Y-%m-%d %H')show_time_segment  , sum( cdn_size) cdn_size ,sum( p2p_pc_size) p2p_pc_size ,sum( p2p_tv_size) p2p_tv_size, sum( p2p_box_size) p2p_box_size ,sum( p2p_mo_size) p2p_mo_size,sum( cde_pc_size) cde_pc_size ,sum( cde_tv_size) cde_tv_size, sum( cde_box_size) cde_box_size ,sum( cde_mo_size) cde_mo_size, sum( lpsize) lpsize,sum(lcsize) lcsize,sum(lsize_cde) lsize_cde,sum(up_rtmfp) up_rtmfp,sum(up_cde) up_cde,sum( conn_node_times) conn_node_times ,sum( get_node_times) get_node_times ,sum( conn_cde_times) conn_cde_times ,sum( get_cde_times) get_cde_times ,sum( share_rep_count)share_rep_count, sum(act) act from share_rate_liv_telecom where ( time_stamp >= date_format(' 2017-9-3 0:00:00 ', '%Y-%m-%d %H:%i:%s') and time_stamp <= date_format('2017-9-4 23:59:59','%Y-%m-%d %H:%i:%s') )  and (  ((select hour('time_stamp') ) >= 0  and (select hour('time_stamp') ) < 24)  ) and country=0  group by show_time_segment  

union all 

select DATE_FORMAT(concat( (select date(time_stamp)),' ' , (select hour (time_stamp)) ) ,'%Y-%m-%d %H')show_time_segment  , sum( cdn_size) cdn_size ,sum( p2p_pc_size) p2p_pc_size ,sum( p2p_tv_size) p2p_tv_size, sum( p2p_box_size) p2p_box_size ,sum( p2p_mo_size) p2p_mo_size,sum( cde_pc_size) cde_pc_size ,sum( cde_tv_size) cde_tv_size, sum( cde_box_size) cde_box_size ,sum( cde_mo_size) cde_mo_size, sum( lpsize) lpsize,sum(lcsize) lcsize,sum(lsize_cde) lsize_cde,sum(up_rtmfp) up_rtmfp,sum(up_cde) up_cde,sum( conn_node_times) conn_node_times ,sum( get_node_times) get_node_times ,sum( conn_cde_times) conn_cde_times ,sum( get_cde_times) get_cde_times ,sum( share_rep_count)share_rep_count, sum(act) act from share_rate_liv_other where ( time_stamp >= date_format(' 2017-9-3 0:00:00 ', '%Y-%m-%d %H:%i:%s') and time_stamp <= date_format('2017-9-4 23:59:59','%Y-%m-%d %H:%i:%s') )  and (  ((select hour('time_stamp') ) >= 0  and (select hour('time_stamp') ) < 24)  ) and country=0  group by show_time_segment  

union all 

select DATE_FORMAT(concat( (select date(time_stamp)),' ' , (select hour (time_stamp)) ) ,'%Y-%m-%d %H')show_time_segment  , sum( cdn_size) cdn_size ,sum( p2p_pc_size) p2p_pc_size ,sum( p2p_tv_size) p2p_tv_size, sum( p2p_box_size) p2p_box_size ,sum( p2p_mo_size) p2p_mo_size,sum( cde_pc_size) cde_pc_size ,sum( cde_tv_size) cde_tv_size, sum( cde_box_size) cde_box_size ,sum( cde_mo_size) cde_mo_size, sum( lpsize) lpsize,sum(lcsize) lcsize,sum(lsize_cde) lsize_cde,sum(up_rtmfp) up_rtmfp,sum(up_cde) up_cde,sum( conn_node_times) conn_node_times ,sum( get_node_times) get_node_times ,sum( conn_cde_times) conn_cde_times ,sum( get_cde_times) get_cde_times ,sum( share_rep_count)share_rep_count, sum(act) act from share_rate_dl_unicom where ( time_stamp >= date_format(' 2017-9-3 0:00:00 ', '%Y-%m-%d %H:%i:%s') and time_stamp <= date_format('2017-9-4 23:59:59','%Y-%m-%d %H:%i:%s') )  and (  ((select hour('time_stamp') ) >= 0  and (select hour('time_stamp') ) < 24)  ) and country=0  group by show_time_segment  

union all 

select DATE_FORMAT(concat( (select date(time_stamp)),' ' , (select hour (time_stamp)) ) ,'%Y-%m-%d %H')show_time_segment  , sum( cdn_size) cdn_size ,sum( p2p_pc_size) p2p_pc_size ,sum( p2p_tv_size) p2p_tv_size, sum( p2p_box_size) p2p_box_size ,sum( p2p_mo_size) p2p_mo_size,sum( cde_pc_size) cde_pc_size ,sum( cde_tv_size) cde_tv_size, sum( cde_box_size) cde_box_size ,sum( cde_mo_size) cde_mo_size, sum( lpsize) lpsize
< ,sum(lcsize) lcsize,sum(lsize_cde) lsize_cde,sum(up_rtmfp) up_rtmfp,sum(up_cde) up_cde,sum( conn_node_times) conn_node_times ,sum( get_node_times) get_node_times ,sum( conn_cde_times) conn_cde_times ,sum( get_cde_times) get_cde_times ,sum( share_rep_count)share_rep_count, sum(act) act from share_rate_dl_telecom where ( time_stamp >= date_format(' 2017-9-3 0:00:00 ', '%Y-%m-%d %H:%i:%s') and time_stamp <= date_format('2017-9-4 23:59:59','%Y-%m-%d %H:%i:%s') )  and (  ((select hour('time_stamp') ) >= 0  and (select hour('time_stamp') ) < 24)  ) and country=0  group by show_time_segment  

union all 

select DATE_FORMAT(concat( (select date(time_stamp)),' ' , (select hour (time_stamp)) ) ,'%Y-%m-%d %H')show_time_segment  , sum( cdn_size) cdn_size ,sum( p2p_pc_size) p2p_pc_size ,sum( p2p_tv_size) p2p_tv_size, sum( p2p_box_size) p2p_box_size ,sum( p2p_mo_size) p2p_mo_size,sum( cde_pc_size) cde_pc_size ,sum( cde_tv_size) cde_tv_size, sum( cde_box_size) cde_box_size ,sum( cde_mo_size) cde_mo_size, sum( lpsize) lpsize,sum(lcsize) lcsize,sum(lsize_cde) lsize_cde,sum(up_rtmfp) up_rtmfp,sum(up_cde) up_cde,sum( conn_node_times) conn_node_times ,sum( get_node_times) get_node_times ,sum( conn_cde_times) conn_cde_times ,sum( get_cde_times) get_cde_times ,sum( share_rep_count)share_rep_count, sum(act) act from share_rate_dl_other where ( time_stamp >= date_format(' 2017-9-3 0:00:00 ', '%Y-%m-%d %H:%i:%s') and time_stamp <= date_format('2017-9-4 23:59:59','%Y-%m-%d %H:%i:%s') )  and (  ((select hour('time_stamp') ) >= 0  and (select hour('time_stamp') ) < 24)  ) and country=0  group by show_time_segment 

) as T_m 

group by show_time_segment ;
</p>


