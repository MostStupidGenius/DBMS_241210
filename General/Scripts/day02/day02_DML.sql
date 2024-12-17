-- DML
-- 테이블의 데이터를 조작하기 위한 데이터 조작어다.
-- 데이터 조회
-- 데이터 삽입
-- 데이터 변경
-- 데이터 삭제

-- SELECT
-- 테이블의 데이터를 표 형태로 조회하는 문법
SELECT * -- 조회하고자 하는 열 이름이나 연산식 등을 적는 곳
FROM TBL_TEST; -- 조회하고자 하는 테이블 명을 적는다.

-- INSERT
-- 데이터를 삽입하는 문법
-- INSERT INTO 테이블명 (컬럼명들)
-- VALUES (컬럼순서에맞는값들);
INSERT INTO TBL_TEST (NAME, HEIGHT, AGE)
VALUES ('고희동', 153.1, 17);

-- 데이터 변경
-- UPDATE
/* UPDATE 테이블명
 * SET 컬럼명1 = 데이터값1, 컬럼명2 = 데이터값2
 * WHERE 조건식
 * */
UPDATE TBL_TEST 
SET NAME='홍당무'
WHERE AGE = 27;

UPDATE TBL_TEST 
SET EMAIL = 'NO';

-- 데이터 삭제
-- DELETE
/* DELETE FROM 테이블명
 * WHERE 조건식;
 */
SELECT * FROM TBL_TEST;

DELETE FROM TBL_TEST
WHERE NAME='고길동';







