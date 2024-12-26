-- OUTER JOIN
-- 두 개 테이블에서 기준이 되는 테이블의
-- 모든 행을 포함시키되 다른 테이블에서
-- 매칭되는 행이 없는 경우, 해당 부분은
-- NULL값으로 처리된다.
--CREATE VIEW VIEW_STADIUM_NAME AS
--SELECT STADIUM_ID, STADIUM_NAME,
--HOMETEAM_ID 
--FROM STADIUM s ;

-- 경기장 정보의 홈팀과 팀 테이블의 팀 아이디를
-- OUTER JOIN으로 병합해보자.
SELECT *
FROM VIEW_STADIUM_NAME;
SELECT *
FROM VIEW_TEAM_NAME;


