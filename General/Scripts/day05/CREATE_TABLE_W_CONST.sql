DROP TABLE TAKING_CLASS;
DROP TABLE STUDENT;
DROP TABLE SUBJECT;

-- 개념적 설계
-- 학생 테이블, 과목 테이블, 성적 테이블
-- TBL	학생 테이블	과목 테이블	수강 테이블							
------------------------------------------------
-- PK	학번 		과목번호		PK (학번FK		
-- =============================   (과목번호FK
--		학년			과목명		수강여부
--		이름						학점
--===============================================
-- 논리적 설계
-- TBL	학생 테이블		과목 테이블	수강 테이블							
------------------------------------------------
-- PK	학번 NUMBER		과목번호		PK (학번FK NUMBER		
-- =============================   			(과목번호FK NUMBER
--		학년	NUMBER		과목명		수강여부 CHAR(1)
--		이름	VARCHAR2(50)					학점	NUMBER



-- =================================
-- 학생 테이블
-- 학번PK NUMBER
-- -----------------
-- 학년	NUMBER DEFAULT 1
-- 이름	VARCHAR2(50) NOT NULL
-- ==================
-- 과목 테이블
-- 과목번호PK NUMBER
-- -------------------
-- 과목명 VARCHAR2(50) NOT NULL
-- ===================
-- 수강 테이블
-- PK(학번FK NUMBER
--   (과목번호FK NUMBER
-- -------------------
-- 수강여부 CHAR(1) 	NOT NULL
-- 					CHECK (수강여부 IN ('Y', 'N'))
-- 학점	NUMBER

-- 물리적 설계
-- 학생 테이블
--DROP TABLE STUDENT;
CREATE TABLE STUDENT (
	STUDENT_ID NUMBER PRIMARY KEY,
	GRADE NUMBER DEFAULT 1,
	NAME VARCHAR2(50) NOT NULL
);

-- 과목 테이블
--DROP TABLE SUBJECT;
CREATE TABLE SUBJECT (
	SUBJECT_ID NUMBER PRIMARY KEY,
	SUBJECT_NAME VARCHAR2(50) NOT NULL
);

-- 수강 테이블
--DROP TABLE TAKING_CLASS;
CREATE TABLE TAKING_CLASS (
	STUDENT_ID NUMBER,
	SUBJECT_ID NUMBER,
	IS_TAKING CHAR(1),
	SCORE NUMBER,
	--	STUDENT_ID를 FK로 설정함.
	CONSTRAINT FK_STDENT_ID FOREIGN KEY(STUDENT_ID) REFERENCES STUDENT(STUDENT_ID) ON DELETE CASCADE,
	CONSTRAINT FK_SUBJECT_ID FOREIGN KEY(SUBJECT_ID) REFERENCES SUBJECT(SUBJECT_ID) ON DELETE CASCADE,
	-- PK_CLASS라는 조합키의 이름을 정해준다
	CONSTRAINT PK_CLASS PRIMARY KEY (STUDENT_ID, SUBJECT_ID),
	CONSTRAINT CK_TAKING CHECK(IS_TAKING IN ('Y', 'N'))
);







