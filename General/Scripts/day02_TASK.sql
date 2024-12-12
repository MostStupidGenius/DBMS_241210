-- 실습용 파일
-- SELECT
-- FROM
-- WHERE
-- ORDER BY

/* 공통: EMPLOYEES 테이블에서
 *      FIRST_NAME, LAST_NAME, JOB_ID, SALARY를 조회하는데
 *      JOB_ID가 'IT_PROG'인 행들만 가져온다.
 * 1. SALARY로 내림차순 정렬
 * 2. 조회하는 열에 HIRE_DATE 컬럼을 추가하고
 *    입사일을 오름차순으로 정렬해서 조회
 */
SELECT FIRST_NAME, LAST_NAME, JOB_ID, SALARY, HIRE_DATE 
FROM EMPLOYEES
--WHERE JOB_ID = 'IT_PROG'
--ORDER BY SALARY DESC;
--ORDER BY HIRE_DATE ASC;
-- 여러 조건으로 정렬하기
-- 먼저 쓴 컬럼으로 정렬을 한 뒤,
-- 정렬 순서상 차이가 없다면
-- 다음 조건으로 정렬을 한다.
-- 이를 조건들이 끝날 때까지 반복한다.
ORDER BY SALARY DESC, HIRE_DATE ASC;







