-- 인덱스
-- 특정 컬럼(들)을 기준으로 순서값을
-- 부여하여 해당 컬럼에 대한 
-- 검색 성능을 증가시키는 객체를 가리킨다.
-- - 주기적인 업데이트 필요
-- - 용량을 더 사용하게 된다.
-- - 불필요한 인덱스는 검색성능을 떨어뜨린다.

-- EMPOLYEES 테이블의 이름 컬럼을 대상으로
-- 인덱스 생성
--CREATE INDEX IDX_EMP_NAME
--ON EMPLOYEES(LAST_NAME, FIRST_NAME);

-- PLAYER 테이블에 인덱스 추가하기
CREATE INDEX IDX_PLAYER_NAME
ON PLAYER(PLAYER_NAME);

SELECT *
FROM PLAYER;
-- 이름에 인덱스를 줬더니 오히려 검색성능이 떨어졌다.
-- 왜? 이미 PK에 인덱스를 적용했기 때문에.
SELECT PLAYER_NAME 
FROM PLAYER;

DROP INDEX IDX_PLAYER_NAME;










