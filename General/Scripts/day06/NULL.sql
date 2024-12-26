-- NULL
-- NULL은 "값이 없음"을 나타내는 자료형으로
-- 다른 말로는 결측치라고도 부른다.
-- 이러한 NULL값은 데이터를 처리할 때
-- "알 수 없음"으로 처리되기 때문에
-- 어떤 연산을 하든 그 결과가 NULL로 나온다.
-- 때문에 이런 NULL값은 다른 값으로 치환하여
-- 연산에 참여해야 한다.

-- 이러한 치환을 지원하는 함수가 두 개 있다.
-- NVL(EX1, EX2)
-- EX1의 값을 확인하여 NULL인 경우
-- EX2의 값으로 치환해 보여준다.
-- EX1의 값이 NULL이 아니라면
-- 기존값 그대로 나온다.
SELECT EMPLOYEE_ID, COMMISSION_PCT,
NVL(COMMISSION_PCT, 0) AS COMMISSION_PCT_NVL
FROM EMPLOYEES e ;

-- NVL2(EX1, EX2, EX3)
-- EX1의 값을 검사하여
-- NULL이 아니라면 EX2의 값으로 반환,
-- NULL이라면 EX3의 값을 반환
SELECT EMPLOYEE_ID, COMMISSION_PCT "BEFORE",
NVL2(COMMISSION_PCT, 1, 0) "AFTER"
FROM EMPLOYEES e ;



