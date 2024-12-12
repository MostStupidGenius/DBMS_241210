-- DDL(Data Definition Language)
-- 데이터베이스의 객체를 정의하기 위한 SQL 언어의 내부 언어다.
-- 생성 : CREATE
-- 변경 : ALTER
-- 삭제 : DROP
-- 완전삭제: TRUNCATE

-- 테이블 생성
-- CREATE 객체종류 객체명 (내용)
CREATE TABLE TBL_STUDENT (
	ID INTEGER,
	NAME VARCHAR2(50),
	BIRTH_DATE DATE
);

-- 테이블 만들기 연습
/* 테이블이름: TBL_TEST
 * 컬럼1: NAME 고정길이문자형 최대길이 50
 * 컬럼2: HEIGHT 숫자형 정수 자릿수 3, 소숫점 자릿수 1 
 * 컬럼3: AGE 정수형
 */

CREATE TABLE TBL_TEST(
	NAME CHAR(50),
	HEIGHT NUMBER(4, 1),
	AGE INTEGER
);
-- 삭제 : DROP
DROP TABLE TBL_TEST;

/* ※ 실수로 만들었다면,
 * DROP TABLE TBL_TEST;
 * 테이블 삭제
 */

-- 테이블 내용 변경
-- ALTER
-- 기존 테이블의 구조를 수정할 때 사용
-- 열 추가/삭제, 데이터 타입 변경 등
-- ALTER 객체종류 객체명 동작 (내용);
ALTER TABLE TBL_TEST ADD (
	EMAIL VARCHAR2(100)
);

ALTER TABLE TBL_TEST (
	NAME VARCHAR2(50)
);

-- 데이터 삭제
-- TRUNCATE
-- 테이블의 모든 데이터를 삭제하지만, 구조는 유지한다.
-- 롤백(복구)을 할 수 없다. -> 실무에서 쓸 일은 없다.
-- 속도가 빠르다.
TRUNCATE TABLE TBL_TEST;







