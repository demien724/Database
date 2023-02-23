-- 1번 문제
CREATE TABLE "HR"."hobby"(
	"hobbyid" varchar2(100),
	"content" varchar2(100),
	"location" varchar2(100)
)


-- 2번 문제
CREATE TABLE "HR"."hobby2" (	
	"hobbyid" VARCHAR2(100), 
	"content" VARCHAR2(100), 
	"location" VARCHAR2(100)
   ) 
   
  
--   3번문제
   INSERT INTO "HR"."hobby" values( '100','run','seoul')

   INSERT INTO "HR"."hobby" values( '100','book','busan')
   
   
--   4번 문제
   SELECT * FROM "HR"."hobby"
   
   SELECT 'content' FROM "HR"."hobby"
   
   SELECT 'location',"content" FROM "HR"."hobby"
   
   