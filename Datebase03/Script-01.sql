-- 테이블 복사
CREATE TABLE member22
AS select * FROM MEMBER


-- sysdate : 데이터를 넣었을 때의 시간을 기록
-- 단 sysdate를 쓰기 위해서는 해당 데이터의 타입이 Date 타입이여야 함
INSERT INTO MEMBER22 
VALUES ('banana3','banana3','banana3','banana3',sysdate)

SELECT * FROM MEMBER22;


-- 객체를 아무것도 안들어가있지 않게 만들고
-- default 값을무조건 multi로 한다
ALTER TABLE HR.MEMBER22 ADD COMPANY VARCHAR2(100) DEFAULT 'multi' NOT NULL;

-- default 값 추가한 value에 대해서
-- 값이 없는 행에 대해서는 미리 설정해둔 default값이 들어갑니다.
INSERT INTO member22
VALUES ('banana4','banana4','banana4','banana4',sysdate,'aaa')

SELECT * FROM member22


-- 유니크 키 설정
ALTER TABLE HR.MEMBER22
ADD CONSTRAINT MEMBER22_UN UNIQUE (LOCATION)
ENABLE;

