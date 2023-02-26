SELECT v.*
  FROM all_views v
 WHERE v.VIEW_NAME like 'ALL_%' 
   and v.OWNER = 'SYS'
 ORDER BY v.VIEW_NAME
;   

SELECT u.username
  FROM all_users u
 ORDER BY u.username 
;  

