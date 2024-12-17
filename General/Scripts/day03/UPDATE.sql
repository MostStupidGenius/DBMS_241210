-- UPDATE
-- 기존 데이터를 수정하는 문법
/* 기본 UPDATE 문법 
 * UPDATE 테이블명 -- 조작을 가할 테이블명
 * SET 컬럼명1=새로운값1, 컬럼명2=새값2,... -- 바꿀 컬럼명과 그 값을 표현하는 곳
 * WHERE 조건식 -- 바꿀 행을 선택하는 곳
 */
-- TBL_ANIMAL 테이블에서
UPDATE TBL_ANIMAL
-- name을 '대한이'로 바꾸고 age를 3으로 변경
SET name='대한이', age=3
-- 이름(name)이 뽀삐인 행에 대하여
WHERE name='뽀삐';

-- 실습
-- TBL_ANIMAL 테이블에서
UPDATE TBL_ANIMAL 
-- owner의 값을 '김숙자'로 변경
SET OWNER = '김숙자'
-- owner 값이 NULL인 행에 대해서 -> =대신에 IS NULL
WHERE OWNER IS NULL
;
-- WHERE절을 쓰지 않으면
-- 모든 행에 해당 쿼리를 적용하기 때문에
-- 데이터의 손실에 대한 경고 메시지를 띄운다.
-- 새로운 열을 추가하고 기본값을 세팅하는 것이 아닌 이상
-- WHERE절을 쓰는 일은 없다고 봐야 한다.
-- 나이의 경우, 자동으로 나이를 추가하는 게 없다면
-- 모든 대상의 나이를 1씩 증가 할 수는 있겠다.
UPDATE TBL_ANIMAL 
SET AGE=AGE+1; -- 기존의 AGE값을 활용해서 1값만 추가한 뒤
-- 그 값을 다시 AGE에 넣는다.

SELECT *
FROM TBL_ANIMAL;