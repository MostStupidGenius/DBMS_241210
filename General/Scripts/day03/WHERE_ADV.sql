-- WHERE 심화
-- WHERE에서 쓰이는 연산자
-- BETWEEN
/* 사용법
 * WHERE 컬럼명 BETWEEN 값1 AND 값2 
 * 컬럼명의 값이 값1과 값2 사이에 위치하니?
 */
-- BETWEEN은 두 값을 포함한 해당 범위에
-- 해당 컬럼의 값이 존재하는지 여부를
-- TRUE 혹은 FALSE로 반환한다.
SELECT SALARY 
FROM EMPLOYEES
WHERE SALARY BETWEEN 6000 AND 4000
ORDER BY SALARY;

-- IN
-- 해당 컬럼 혹은 값이 IN 뒤에 오는
-- 집합에 포함되는지 여부를 반환한다.
/* 사용법
 * WHERE 컬럼명 IN (값1, 값2,...)  
 */
SELECT SALARY 
FROM EMPLOYEES
WHERE SALARY IN (2200, 4000, 6000)
ORDER BY SALARY;

SELECT MANAGER_ID
FROM EMPLOYEES
WHERE MANAGER_ID IN (100, 103, 108) 
;

-- LIKE
-- 문자열에 대해서 특정 패턴이 일치하는지
-- 여부를 반환한다.
/* 사용법
 * WHERE 문자열값 혹은 컬럼명 LIKE '패턴'
 */
-- 패턴에 들어가는 %는 해당 위치에
-- 개수, 문자에 상관없이 무언가가 온다는 의미
-- 즉, '%A'는 A로 끝나는 문자열을 검색한다.
-- 'A%'는 A로 시작하는 문자열 검색
-- '%A%'는 중간에 A가 들어가는 문자열 검색
-- 이때, 패턴의 영문자는 대소문자를 구분한다.
-- %는 빈문자열도 포함한다.
-- -> %a%를 했을 때, 중간에 a문자 없이
-- 마지막에만 a가 들어가는 경우도 검색된다.

SELECT FIRST_NAME 
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%a%' 
ORDER BY FIRST_NAME 
;

-- IS NULL