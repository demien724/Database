CREATE TABLE "HR"."NOTICE" 
   (	"BOARDNO" NUMBER(38,0), 
	"TITLE" VARCHAR2(100), 
	"CONTENTS" VARCHAR2(100), 
	"WRITER" VARCHAR2(100), 
	"WRITEDATE" DATE, 
	"RECOMMEND" NUMBER(38,0), 
	"VIEWCOUNT" NUMBER(38,0)
   )
   

   
   --  테이블 통째로 던져버림
   DROP TABLE RECOMMEND   
   
   
--   추천 게시판(recommend)
   
   CREATE TABLE "HR"."RECOMMEND" (  
   	 "RE_NO" NUMBER(20,0),
   	 "TITLE" VARCHAR2(100),
   	 "CONTENTS" VARCHAR2(100),
   	 "WRITER" VARCHAR2(100)
   )
   
   
--ALTER TABLE HR.RECOMMEND ADD VIEWCOUNT NUMBER(38,0) NULL;  
  
--ALTER TABLE HR.RECOMMEND ADD TEST VARCHAR2(100) NULL;

--ALTER TABLE HR.RECOMMEND ADD TEST2 VARCHAR2(100) NULL;

--ALTER TABLE HR.RECOMMEND ADD TEST3 VARCHAR2(100) NULL;
  
CREATE TABLE "HR"."BOARD3" 
   (	
    "BOARDNO" NUMBER(38,0), 
	"TITLE" VARCHAR2(100), 
	"CONTENTS" VARCHAR2(100), 
	"WRITER" VARCHAR2(100), 
	"WRITEDATE" DATE, 
	"RECOMMEND" NUMBER(38,0), 
	"VIEWCOUNT" NUMBER(38,0)
   )
   
   
--   1.
   
--	 ALTER TABLE HR.BOARD3 ADD TEST VARCHAR2(100) NULL;
--  
--	 ALTER TABLE HR.BOARD3 ADD TEST2 VARCHAR2(100) NULL;
--
--	ALTER TABLE HR.BOARD3 ADD TEST3 VARCHAR2(100) NULL;
--  
-- 
--	ALTER TABLE .HR.BOARD3 DROP COLUMN TEST;
--
--	ALTER TABLE .HR.BOARD3 DROP COLUMN TEST2;
--	
--	ALTER TABLE .HR.BOARD3 DROP COLUMN TEST2;
   
  	ALTER TABLE HR.BOARD3 MODIFY WRITER VARCHAR2(200);
  
  	ALTER TABLE HR.BOARD3 DROP COLUMN VIEWCOUNT;
 
 	ALTER TABLE HR.BOARD3 ADD VIEWCOUNT NUMBER(38,0);

	DROP TABLE BOARD3 
	
	DROP TABLE BBS2
	
--	DCL : DB 관리/제어 해주는 문법
--	계정 생성, 계정 권한 부여, 백업, 복구
	
	CREATE USER "apple" IDENTIFIED BY a1234
	
	GRANT CONNECT, resource, dba TO "apple"
	
	
--	entity 추가
	INSERT INTO MEMBER VALUES ('100','100','park','011')

	INSERT INTO MEMBER VALUES ('200','200','park','011')

	INSERT INTO MEMBER VALUES ('300','300','park','011')
	
--	select
   SELECT * FROM "MEMBER"
   
   SELECT * FROM MEMBER WHERE id = '100';
  
   SELECT id, name FROM MEMBER WHERE id = '100';
	
   SELECT name, id FROM MEMBER WHERE id = '100';
  
   SELECT tel FROM MEMBER WHERE name='park';
  
  
  
  -- UPDATE : 데이터를 갱신
  -- 모든 테이블의 이름이 kim 으로 변경됨
  UPDATE MEMBER SET name = 'kim'
  
  --  where 통해 조건을 걸 수 있음
  UPDATE MEMBER SET name = 'kim' WHERE id = '100';
 
  UPDATE MEMBER SET name = 'yang' WHERE id = '200';
 
  UPDATE MEMBER SET name = 'lee' WHERE id = '300';
  
 
 UPDATE MEMBER SET PW = '8888', tel = '9999' WHERE id= 'ice';
 
 
-- DELETE 
DELETE FROM MEMBER WHERE id = '100';

DELETE FROM MEMBER WHERE id = '001';

-- 조건
-- AND 혹은 OR를 사용합니다

SELECT * FROM MEMBER WHERE id = '200' AND tel = '011'; 

SELECT * FROM  MEMBER WHERE id = 'park' OR tel = '011';


-- 정렬 출력
SELECT * FROM MEMBER ORDER BY id;

SELECT * FROM MEMBER ORDER BY id DESC;


-- 
CREATE TABLE product3 (
	id varchar2(200), 
	name varchar2(200), 
	content varchar2(200), 
	price varchar2(200), 
	company varchar2(200), 
	img varchar2(200)
)

-- select (column 이름) FROM (table 이름) + 조건들
-- udpate (TABLE 이름) FROM (COLUMN 이름) = '변경할 내용' + 조건들
-- delete from (table 이름) + 조건들

--price로 내림차순 정렬하여 전체컬럼 검색
--company로 오름차순 정렬하여 제품의 이름, 내용, 가격 검색
--id가 100인 제품의 이름과 가격 검색
--price가 5000인 제품명과 회사명
--id가 100이고 가격이 1000인 제품명과 이미지 검색
--회사명이 c100인 회사명과 제품명
--회사명이 c100, c200인 제품명과 가격
--price가 5000원인 제품의 content를 품절로 수정
--id가 100, 102번 제품의 img를 o.png로, price를 10000으로 수정
--id가 101번 제품의 company를 apple, name은 appleshoes로 수정
--name이 shoes1이거나 id가 107인 제품 삭제
--회사명이 c100인 경우 모든 정보 삭제
--테이블의 모든 정보 삭제



-- 1번
SELECT * FROM product3 ORDER BY price DESC;

-- 2번
SELECT * FROM product3 ORDER BY COMPANY;

-- 3번
SELECT name, price FROM PRODUCT3 WHERE id='100' ;

-- 4번
SELECT name, COMPANY FROM PRODUCT3 WHERE price = '5000' ;

-- 5번
SELECT name, img FROM PRODUCT3 WHERE id='100' AND price = '1000'

-- 6번
SELECT COMPANY , NAME  FROM PRODUCT3 WHERE COMPANY ='c100';

-- 7번
SELECT COMPANY , NAME  FROM PRODUCT3 WHERE COMPANY ='c100' OR COMPANY ='c200';

-- 8번
UPDATE PRODUCT3 SET CONTENT = '품절' WHERE PRICE ='5000';

-- 9번
UPDATE PRODUCT3 SET img='o.png', PRICE = '10000' WHERE id='100' OR id='102';

-- 10번
UPDATE PRODUCT3 SET COMPANY = 'apple',NAME = 'appleshoes' WHERE id='101';

-- 11번
DELETE FROM PRODUCT3 WHERE name='shoes1' OR id='107';

-- 12번
DELETE FROM PRODUCT3 WHERE COMPANY = 'c100';

-- 13번
DELETE FROM PRODUCT3;

-- 14번
DROP TABLE PRODUCT3;




   
