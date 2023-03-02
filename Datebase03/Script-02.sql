--Sequence 설정
CREATE TABLE "HR"."BBS" 
   (	"no" VARCHAR2(100), 
	"TITLE" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"WRITER" VARCHAR2(100), 
	 CONSTRAINT "BBS_PK" PRIMARY KEY ("no"), 
     CONSTRAINT "FK_MEMBER" FOREIGN KEY ("WRITER")
	  REFERENCES "HR"."MEMBER" ("ID") 
)

-- 
INSERT INTO BBS 
VALUES (bbs_id_seq.nextval, 'happy', 'happy day', 'ice')

INSERT INTO BBS 
VALUES (bbs_id_seq.nextval, 'happy2', 'happy day2', 'ice')


SELECT * FROM BBS

-- 생성 스크립트 
CREATE SEQUENCE pd_id_seq
INCREMENT BY 1 
START WITH 1

CREATE TABLE "HR"."product3" (
	id number(38,0),
	name varchar2(100)
)

INSERT INTO "HR"."product3"
VALUES (pd_id_seq.nextval, '홍길동')

SELECT * FROM "product3"
