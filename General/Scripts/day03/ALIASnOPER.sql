-- OPERATION
-- 연산자는 연산에 쓰기 위해 미리 지정해놓은(약속)
-- 기호를 말한다.

-- 연결 연산자(concatenation operator)
-- shift + \
-- || -> 두 개 이상의 문자열을 하나의 문자열로 합칠 때
-- 사용한다.
SELECT FIRST_NAME || ' ' || LAST_NAME AS "FULL NAME"
FROM EMPLOYEES;

-- ALIAS
-- SELECT에서 가져온 컬럼의 이름을 알아보기 쉬운 단어로
-- 별칭을 붙일 때 쓰인다.
-- 컬럼명 AS "별칭"
-- 1. AS 생략 가능
-- 2. 별칭에 공백이나 다른 문제가 없다면 큰따옴표(") 생략 가능

-- 산술 연산자
-- 수의 계산에 쓰이는 사칙연산자를 지칭하는 용어로
-- 더하기(+), 빼기(-), 곱하기(*), 나누기(/) 등이 있다.
SELECT SALARY 월급, SALARY * 12 연봉
FROM EMPLOYEES;

-- 관계 연산자(비교 연산자)
-- 두 값의 크기나 같은지 여부를 비교할 때 사용한다.
-- 두 값의 관계에 대해서 표현할 때 사용한다.
-- ~~하니?라고 읽되
-- WHERE가 붙으면 ~하면으로 읽자.
-- = 같니?
-- 월급 열을 출력해라
SELECT SALARY 
-- EMPLOYEES 테이블에서
FROM EMPLOYEES
-- 월급이 17000과 같으면
WHERE SALARY = 17000;

-- != <> 다르니?
SELECT *
FROM EMPLOYEES
--WHERE DEPARTMENT_ID != 90;
WHERE SALARY <> 12008;

-- >, < 초과 미만
-- SALARY 출력
SELECT SALARY 
FROM EMPLOYEES
-- SALARY가 5000 초과라면
WHERE SALARY > 5000
-- SALARY값을 기준으로 오름차순으로 정렬
ORDER BY SALARY ASC;

-- >=, <= 이상 이하
-- SALARY 출력
SELECT SALARY 
FROM EMPLOYEES
-- SALARY가 6000 이하라면
WHERE SALARY <= 6000
-- SALARY 컬럼의 값을 기준으로 내림차순으로 정렬
ORDER BY SALARY DESC;







