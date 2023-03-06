--
--
--price는 number(oracle), int(mysql)
CREATE TABLE PRODUCT3
(	"ID" VARCHAR2(200),
"NAME" VARCHAR2(200),
"CONTENT" VARCHAR2(200),
"PRICE" NUMBER(38,0),
"COMPANY" VARCHAR2(200),
"IMG" VARCHAR2(200)
)

--price로 내림차순 정렬하여 전체컬럼 검색
SELECT * FROM PRODUCT3 ORDER BY PRICE DESC;

--company로 오름차순 정렬하여 제품의 이름, 내용, 가격 검색
SELECT NAME,CONTENT ,PRICE  FROM PRODUCT3 ORDER BY COMPANY;

--company의 목록을 검색(중복제거)
SELECT DISTINCT  * FROM PRODUCT3;
 
--각 신발을 5개씩 주문했을 때의 가격을 price5라고 항목명을 지정하여 출력
SELECT PRICE * 5 AS PRICE5 FROM PRODUCT3;

--price가 5000인 제품명과 회사명
SELECT * FROM PRODUCT3 WHERE PRICE = 5000;

--price가 3000와 6000사이인 제품명과 가격, 회사명 검색
SELECT PRICE, COMPANY FROM PRODUCT3 WHERE PRICE >=3000 AND PRICE <= 6000;

--회사명이 c100이 아닌 회사명과 제품명
SELECT COMPANY, NAME FROM PRODUCT3  

--회사명이 c100, c200인 제품명과 가격
SELECT NAME, PRICE FROM PRODUCT3 WHERE COMPANY='c100' OR COMPANY = 'c200';

--제품명에 4로 끝나는 제품의 전체 정보 검색
SELECT * FROM PRODUCT3 WHERE NAME LIKE '%4'

--제품내용에 food를 포함하는 제품의 전체 정보 검색
SELECT * FROM PRODUCT3 WHERE NAME like '%food%';

--price가 5000원인 제품의 content를 품절로 수정
UPDATE PRODUCT3 
SET CONTENT ='품절'
WHERE price = 5000

SELECT * FROM PRODUCT3;

--id가 100, 102번 제품의 img를 o.png로, price를 10000으로 수정
UPDATE PRODUCT3 
SET img ='o.png',price = 10000 
WHERE id = 100 OR id = 102;

SELECT * FROM PRODUCT3;

--회사명이 c100인 경우 모든 정보 삭제
DELETE FROM PRODUCT3
WHERE company = 'c100';

SELECT * FROM PRODUCT3;
--테이블의 모든 정보 삭제
DELETE FROM PRODUCT3;

SELECT * FROM PRODUCT3;
