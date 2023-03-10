CREATE TABLE DEPT
(
DEPTNO NUMBER(2),
DNAME VARCHAR2(14 BYTE),
LOC VARCHAR2(13 BYTE)
)


CREATE TABLE EMP
(
EMPNO NUMBER(4),
ENAME VARCHAR2(10 BYTE),
JOB VARCHAR2(9 BYTE),
MGR NUMBER(4),
HIREDATE DATE,
SAL NUMBER(7,2),
COMM NUMBER(7,2),
DEPTNO NUMBER(2)
)

CREATE TABLE SALGRADE
(
GRADE NUMBER,
LOSAL NUMBER,
HISAL NUMBER
)



-- 
SELECT * FROM emp;

-- 특정 columne 출력
SELECT deptno FROM emp;

-- 중복 제거
SELECT DISTINCT deptno FROM emp;

-- 특정 columne 출력 및 계산
SELECT ename, sal * 12 AS yearsal  FROM emp;

-- 월급을 내림 차순으로 정렬해 출력
SELECT * FROM emp ORDER BY sal DESC;

SELECT * from emp
WHERE deptno = 30
ORDER BY empno DESC;

SELECT * FROM emp
WHERE DEPTNO = 30
OR JOB = 'SALESMAN';

SELECT * FROM emp
WHERE sal != 3000

SELECT * FROM emp
WHERE sal >= 3000

SELECT * FROM emp
WHERE job IN ('SALESMAN','MANAGER')
ORDER BY JOB

SELECT * FROM emp
WHERE job NOT IN ('SALESMAN','MANAGER')
ORDER BY JOB

SELECT * FROM emp
WHERE SAL NOT BETWEEN 200 AND 3000
ORDER BY EMPNO

SELECT * FROM emp
WHERE SAL BETWEEN 200 AND 3000
ORDER BY EMPNO

SELECT * FROM EMP e 
WHERE ENAME LIKE '_L%'

SELECT * FROM EMP e 
WHERE ENAME NOT LIKE '_L%'


SELECT * FROM EMP e 
WHERE COMM IS NULL;


SELECT * FROM EMP e 
WHERE COMM IS NOT NULL;


--
--
-- 복사하는 방법
CREATE TABLE DEPT_TEMP2
AS 
SELECT * FROM DEPT

SELECT * FROM DEPT_TEMP2;


--UPDATE
UPDATE DEPT_TEMP2 
SET LOC = 'SEOUL';

UPDATE DEPT_TEMP2 
SET DNAME = 'DATABASE', LOC = 'BUSAN'
WHERE DEPTNO = 40

SELECT * FROM DEPT_TEMP2;


-- DELETE 
DELETE FROM DEPT_TEMP2
WHERE DNAME = 'SALES'

SELECT  * FROM DEPT_TEMP2
