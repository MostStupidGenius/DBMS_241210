-- VIEW
-- 뷰 테이블은 가상 테이블로서
-- 기존 테이블을 복사한 복제본을 만드는 것이다.
-- 이때 이 뷰 테이블은 기존 원본 테이블에 영향을 주거나 받지 않는다.
-- 하나의 물리적인 테이블이 아니기 때문에
-- 실제 데이터를 저장하지 않는다.

-- 뷰 생성 및 사용
CREATE VIEW VIEW_SALARY AS
SELECT EMPLOYEE_ID, SALARY
FROM EMPLOYEES;

SELECT *
FROM VIEW_SALARY;






