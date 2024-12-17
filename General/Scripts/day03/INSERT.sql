-- 데이터를 테이블에 삽입하는 명령어
-- INSERT문
-- INSERT INTO 테이블명 (컬럼1, 컬럼2,...)
-- VALUES (컬럼1에 들어갈값, 컬2들값,...)
-- INSERT INTO 구문의 ()안에 있는 컬럼의 개수와
-- VALUES 구문의 ()안에 있는 값들의 개수가
-- 반드시 일치해야 한다.

-- 데이터를 넣을 더미 테이블 만들기
CREATE TABLE TBL_ANIMAL(
	name VARCHAR2(50),
	age INTEGER,
	owner VARCHAR2(50)
);

-- TBL_ANIMAL에 데이터를 넣어보자.
INSERT INTO TBL_ANIMAL (name, age, owner)
VALUES ('뽀삐', 2, '홍길동');
INSERT INTO TBL_ANIMAL (name, age, owner)
VALUES ('바둑이', 4, '이준상');
INSERT INTO TBL_ANIMAL (name, age, owner)
VALUES ('콩', 10, '이준상');
INSERT INTO TBL_ANIMAL (name, age, owner)
VALUES ('나비', 3, '고희동');

SELECT *
FROM TBL_ANIMAL;

-- 컬럼명을 빼먹을 경우, 정해놓은 컬럼에 대해서만 값이 들어가고
-- 빼먹은 컬럼의 값은 NULL값이 들어간다.
INSERT INTO TBL_ANIMAL (name, age)
VALUES ('고일이', 5);