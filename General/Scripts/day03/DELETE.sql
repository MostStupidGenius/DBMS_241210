-- DELETE문
-- 조건식에 따라 해당되는 행을 테이블에서 삭제하는 명령문
/* DELETE문 기본 문법
 * DELETE FROM 테이블명
 * WHERE 조건식;
 */
SELECT *
FROM TBL_ANIMAL ta ;

DELETE FROM TBL_ANIMAL
--WHERE AGE>10;
WHERE OWNER='김숙자';
