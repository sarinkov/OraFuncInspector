WITH cteObjects AS (
  SELECT DISTINCT 
         upper(src.owner) as owner
        ,upper(src.name)  as name
        ,CASE WHEN upper(src.type) like 'PACKAGE%'
           THEN 'PACKAGE'
           ELSE upper(src.type)
         END              as type
    FROM all_source src
   WHERE upper(src.owner) = upper(nvl(&owner, src.owner))
     and upper(src.text) like '%' || upper(&text) || '%'
     and (
         upper(src.type) in  ('FUNCTION', 'PROCEDURE') or
         upper(src.type) like 'PACKAGE%'
         )
)         
SELECT obj.*
      ,CASE 
         WHEN obj.type = 'PROCEDURE' THEN 1
         WHEN obj.type = 'FUNCTION'  THEN 2
         WHEN obj.type = 'PACKAGE'   THEN 3
                                     ELSE 0    
       END as type_id
      ,(SELECT count(*)
          FROM cteObjects
       )   as rec_count         
  FROM cteObjects obj
 ORDER BY obj.owner, obj.type, obj.name
;  

SELECT src.*
  FROM all_source src
 WHERE upper(src.text) like '%DRI_VERSION%' 
;

SELECT nvl('', 'ABC') as STR FROM dual;
