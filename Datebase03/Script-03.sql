-- orderlist3  만들기
-- values id(number) , title, price(number)
-- sequence 활용 , 이름은 or_seq
-- start 값 1 , increment값 : 1 
-- row값 3개 이상 넣어보고 확인
CREATE TABLE orderlist3(
	id number(38,0),
	title varchar2(100),
	price number(38,0)
)

CREATE SEQUENCE or_seq START WITH 1 INCREMENT BY 1;



INSERT INTO orderlist3
VALUES (or_seq.nextval , '전우치', 50000)

INSERT INTO orderlist3
VALUES (or_seq.nextval , '바람과 함께 사라지다', 10000)

INSERT INTO orderlist3
VALUES (or_seq.nextval ,'토르', 30000)

SELECT * FROM orderlist3 ORDER BY id;			-- 오름 차순
SELECT * FROM orderlist3 ORDER BY id DESC ;		-- 내림 차순
SELECT * FROM orderlist3 WHERE id >= 3 ORDER BY id DESC  ;		-- 내림 차순 + 조건 단 아이디가 3이상인 것들만




