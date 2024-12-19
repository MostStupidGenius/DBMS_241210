-- 서브쿼리
/* 서브쿼리란 메인 쿼리 안에 내부적으로 호출되는 쿼리를 의미하며
 * 주로 복잡한 연산을 하거나 데이터를 일부 필터링한 것에 대해서
 * 재 연산을 할 때 사용된다.
 */
SELECT *
FROM (
	SELECT EMPLOYEE_ID, FIRST_NAME
	FROM EMPLOYEES
);
