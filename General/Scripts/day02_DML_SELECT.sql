-- SELECT문
-- 데이터를 조회하기 위한 명령문으로
-- 여러가지 조건에 따라 조회하고자 하는 데이터를 조절할 수 있다.
-- SELECT 뒤에 컬럼명을 반점(,)으로 구분하여 전달하면
-- 해당 열의 순서로 이루어진 테이블을 조회할 수 있다.
-- 모든 열을 조회하고자 한다면 *(Wildcard)를 적는다.
SELECT NAME, HEIGHT 
FROM TBL_TEST;

-- Alias
-- 조회한 열의 이름을 변경하는 별칭을 부여하는 것
-- 컬럼명 AS "별칭"
-- 	AS는 생략가능
-- 컬럼명 "별칭"
-- 	별칭의 내용중에 예약어나 공백문자가 없다면
--  큰따옴표(") 생략가능
SELECT NAME 이름, AGE 나이
FROM TBL_TEST;

-- WHERE
-- 조건 지정
SELECT *
--
FROM EMPLOYEES;
-- 같다라는 의미의 연산자는 = 이다.
-- WHERE 컬럼명 연산자 값
WHERE SALARY = 2500;

-- 세미콜론이 실행하는 범위
-- 기준1 공백인 줄 아래부터 세미콜론까지
-- 기준2 앞서 작성한 세미콜론 아랫줄부터 현재 세미콜론까지
-- 예외: 주석으로만 작성된 줄은 공백줄로 취급하지 않는다.

-- ORDER BY
-- 정렬 기준 및 순서 지정
SELECT EMPLOYEE_ID 아이디, FIRST_NAME 이름, LAST_NAME 성,
SALARY 월급
FROM EMPLOYEES -- EMPLOYEES 테이블에서 위의 열들을
WHERE SALARY >= 5000 -- 월급이 5000이상인 행들에 대해서
ORDER BY SALARY; -- 월급 오름차순 정렬로 조회해줘.
-- 오름차순 -> ASC
-- 기본값이기 때문에 생략이 가능하다
-- 내림차순 -> DESC
-- 오름차순이 아닌 내림차순으로 정렬할 때 쓰인다.
-- 


-- DISTINCT
-- 결과에서 중복된 데이터를 제거할 때 사용한다.





