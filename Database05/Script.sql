-- 정규화
-- 제 1정규화(1NF) >> 	열 하나 당 속성 하나를 갖는 규칙
-- 				'원자값'을 확인하는 것
-- 제 2정규화(2NF) >> 	기본키에 의해 다른 항목들이 완전종속이어야 함
--				즉, 기본키 하나로 

-- 각 테이블에 insert/delete/update를 각 2개이상씩 해보고, 이상현상이 발생하는지 확인할 것.
INSERT INTO SUBJECT (강좌이름,강의실) VALUES('데이터베이스','공학관 101');

INSERT INTO SUBJECT (강좌이름,강의실) VALUES('자료구조','공학관 111');

INSERT INTO DEPARTMENT  (학과,학과사무실) VALUES('컴퓨터과','공학관 101');

INSERT INTO DEPARTMENT (학과,학과사무실) values('체육학과','체육관 101')

INSERT INTO STUDENT_INFORMATION (학생번호,학생이름,주소,학과) VALUES(501,'박지성','영국 멘체스타','컴퓨터과');

INSERT INTO STUDENT_INFORMATION (학생번호,학생이름,주소,학과) values(502,'추신수','미국 클리브랜드','컴퓨터과');

INSERT INTO "record" (학생번호,강좌이름 ,성적) VALUES (501,'데이터베이스',3.5);

INSERT INTO "record" (학생번호,강좌이름,성적) VALUES (502,'자료구조',4.0);


-- INNER JOIN 확인
SELECT * FROM STUDENT_INFORMATION si , DEPARTMENT d ;

SELECT * FROM SUBJECT s ,"record" r ;

SELECT * FROM "record" r , STUDENT_INFORMATION si ;

SELECT * FROM DEPARTMENT d LEFT OUTER JOIN STUDENT_INFORMATION si ON (d.학과 = si.학과);

SELECT * FROM DEPARTMENT d RIGHT OUTER JOIN STUDENT_INFORMATION si ON (d.학과 = si.학과);



-- subquery
SELECT * FROM hr.STUDENT_INFORMATION WHERE 학생번호 IN (SELECT 학생번호 FROM hr."record" WHERE 성적 >= 4 );
