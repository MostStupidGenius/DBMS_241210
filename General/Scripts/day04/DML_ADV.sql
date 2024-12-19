FROM EMPLOYEES;
SELECT *
FROM TBL_STUDENT;

-- 다중 삽입
INSERT ALL -- 여러 행을 삽입할 때 사용한다.
	INTO TBL_STUDENT(ID, NAME)
	VALUES (1, '홍길동')
--	넣고자 하는 행의 정보를 반복적으로 입력해주면 된다.
	INTO TBL_STUDENT(ID, NAME)
	VALUES (2, '고길동')
SELECT * FROM DUAL; -- 더미 테이블 DUAL 호출
/* DUAL
 * 연산을 위한 더미 테이블을 호출하는 것이다.
 * SELECT 문을 사용할 때 반드시
 * FROM절을 사용해야 하는데,
 * 일반 테이블을 사용하면 문제가 될 수 있기 때문에
 * 더미 테이블을 호출하여 FROM의 빈 자리를 채우는 것이다.
 * */
SELECT * FROM DUAL;

SELECT *
FROM EMPLOYEES e; 

-- GROUP BY
-- 집계함수를 사용하기 위한 그룹화 절
-- DEPARMENT_ID를 기준으로 그룹화하여
-- 그룹별 SALARY의 평균값을 구해보자.

/*집계함수
 * 합계 - SUM()
 * 평균 - AVG()
 * 개수세기 - COUNT()
 * */
-- 전체 대상 평균 월급 출력
SELECT AVG(SALARY) AS "평균월급"
FROM EMPLOYEES;

-- COUNT()
-- 해당 컬럼의 값이 NULL이 아닌 행의 개수를 센다.
SELECT COUNT(COMMISSION_PCT)
FROM EMPLOYEES e ;

-- SUM()
-- 숫자형 컬럼의 값의 합을 구하는 함수.
-- 이때, 해당 컬럼의 타입이 숫자형이 아니면 오류 출력
-- NULL값을 제외한 값의 합을 반환한다.
SELECT SUM(COMMISSION_PCT)
FROM EMPLOYEES e ;

-- 집계함수의 특징
-- 집계함수를 사용한 결과는 하나의 행으로만 결과가 나온다.
-- NULL값을 가진 행은 무시한다.

-- GROUP BY
-- 집계함수를 사용을 위해 특정 그룹으로 묶기 위한 절이다.
SELECT DEPARTMENT_ID, AVG(SALARY) AS "SALARY_AVG"
FROM EMPLOYEES e 
GROUP BY DEPARTMENT_ID
ORDER BY SALARY_AVG;

-- 해당 결과를 서브쿼리로 FROM 절에 넣어서
-- 평균급여에 대한 오름차순으로 정렬해보자.
SELECT *
FROM (
	SELECT DEPARTMENT_ID, AVG(SALARY) AS "SALARY_AVG"
	FROM EMPLOYEES e 
	GROUP BY DEPARTMENT_ID
)
ORDER BY SALARY_AVG DESC;

-- HAVING
-- GROUP BY에 대해서 조건 적용
SELECT DEPARTMENT_ID, AVG(SALARY) AS AVG_SAL 
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
-- HAVING절에서는 AS를 이용할 수 없다.
HAVING AVG(SALARY) > 10000
ORDER BY AVG_SAL
;

-- ====================
-- MAX(숫자형 컬럼명)
-- 해당 컬럼의 최대값을 출력
-- MIN()
-- 해당 컬럼의 최소값을 출력

-- 실습1
/* EMPLOYEES 테이블에서 DEPARTMENT_ID로 그룹화하여
 * DEPARTMENT_ID와 평균 급여를 출력하되
 * HAVING절로 평균 급여가 5000에서 10000 사이(포함)인
 * 결과만 표시해라
 * */
SELECT DEPARTMENT_ID, AVG(SALARY) AS "AVG_SAL" 
FROM EMPLOYEES
-- WHERE절을 사용하면
-- 집계대상이 되는 행을 제한하는 역할을 한다.
--WHERE SALARY BETWEEN 5000 AND 10000
--WHERE DEPARTMENT_ID IN (60, 40, 100)
GROUP BY DEPARTMENT_ID
HAVING AVG(SALARY) BETWEEN 5000 AND 10000
ORDER BY AVG(SALARY)
;
-- WHERE와 HAVING은 순서상 WHERE로 먼저 대상 행을 필터링하고
-- GROUP BY가 작동한 뒤,
-- 그룹별 집계함수가 동작한 결과에 대해서
-- HAVING절로 필터링을 하는 것이다.

/* 실습2
 * 각 그룹별 급여가 최대인 경우를 구해서
 * 전체 중 급여가 5000 초과인 행들의 평균 급여보다 큰
 * 그룹별 ID와 최대급여, 그룹별 평균급여 행 출력
 */
-- 각 그룹별 ID와 그룹별 최대 급여행의 값, 그룹별 평균 급여값
SELECT DEPARTMENT_ID, MAX(SALARY), AVG(SALARY)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
-- 각 그룹별 최대 급여값이
HAVING MAX(SALARY) > (
	-- 평균 급여보다 큰 경우
	SELECT AVG(SALARY)
	FROM EMPLOYEES e
	-- 5000보다 큰 행들의
	WHERE SALARY > 5000
);

SELECT AVG(SALARY)
FROM EMPLOYEES e
WHERE SALARY > 5000;










