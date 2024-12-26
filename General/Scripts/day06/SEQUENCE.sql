-- 시퀀스
-- 자동으로 증가하는 숫자를 생성하는
-- 객체다.
-- 일반적으로 ID값을 자동으로 생성할 때
-- 사용된다.

-- STUDENT 테이블에 데이터를 삽입하려고 한다.
-- 시퀀스 객체를 생성하고
-- 이를 STUDENT의 ID 값에 활용해보자.

-- 시퀀스 생성
CREATE SEQUENCE STUDENT_SEQ
START WITH 1 -- 시퀀스의 시작값
INCREMENT BY 1 -- 시퀀스의 증가값
;

-- 시퀀스 값의 사용
-- 시퀀스명.NEXTVAL
-- 다음 값을 사용하고 시퀀스를 증가시킨다.

-- 시퀀스의 현재 값 확인
-- 시퀀스명.CURRVAL
-- 현재 시퀀스 값을 확인한다.
-- 한번도 사용하지 않았다면 확인 불가
SELECT STUDENT_SEQ.CURRVAL
FROM DUAL;
SELECT *
FROM STUDENT s ;


INSERT INTO STUDENT (STUDENT_ID, GRADE, NAME)
VALUES (STUDENT_SEQ.NEXTVAL, 1, '홍길동');
INSERT INTO STUDENT (STUDENT_ID, GRADE, NAME)
VALUES (STUDENT_SEQ.NEXTVAL, 2, '고길동');
INSERT INTO STUDENT (STUDENT_ID, GRADE, NAME)
VALUES (STUDENT_SEQ.NEXTVAL, 1, '둘리');






