-- 제약조건이란
-- 테이블의 열에 대해서 열에 들어갈 값을 어떻게 설정할 것인가
-- 어떤 값을 넣을 것인가, 넣지 않는다면 기본값으로 무엇을 넣을 것인가.
-- 1. PRIMARY KEY
-- PK라고도 불리는 기본키를 의미한다.
-- 역할: 테이블의 레코드(각 행)을 고유하게 가리킬 수 있는
-- 식별자 컬럼 역할을 한다.(ID)
CREATE TABLE TBL_SUBJECT (
	SUBJECT_ID PRIMARY KEY -- 각 과목을 고유하게 식별할 수 있는 ID 열	
);
-- 2. FOREIGN KEY
-- 외부의 다른 테이블에서 PK로 지정된 열을
-- 현재 테이블의 열과 일치시키는(SYNC)역할을 한다.
-- 이를 통해 두 테이블의 관계가 형성된다.
CREATE TABLE TBL_SUBJECT (
	SUBJECT_ID NUMBER PRIMARY KEY, -- 각 과목을 고유하게 식별할 수 있는 ID 열	
	TEACHER_ID NUMBER FOREIGN KEY
);

-- 3. UNIQUE
-- NULL값은 허용하지만 값을 삽입할 경우,
-- 그 값이 중복되지 않도록 데이터를
-- 입력할 것을 강제하는 제약 조건이다.
CREATE TABLE TBL_SUBJECT (
	SUBJECT_ID NUMBER PRIMARY KEY, -- 각 과목을 고유하게 식별할 수 있는 ID 열	
	TEACHER_ID NUMBER FOREIGN KEY,
	BOOK_NAME VARCHAR(50) UNIQUE -- 각 과목에서 사용하는 교재는 다른 과목과 겹치지 않는다.
);

-- 4. NOT NULL
CREATE TABLE TBL_SUBJECT (
	SUBJECT_ID NUMBER PRIMARY KEY, -- 각 과목을 고유하게 식별할 수 있는 ID 열	
	TEACHER_ID NUMBER FOREIGN KEY, -- 교수의 ID를 교수 테이블에서 현재 TEACHER_ID와 연결하여 관계를 형성한다.
	BOOK_NAME VARCHAR(50) UNIQUE, -- 각 과목에서 사용하는 교재는 다른 과목과 겹치지 않는다.
	CLASS_NAME CHAR(1) NOT NULL -- 각 과목을 강의하는 강의장은 비워둘 수 없다.
);

-- 5. CHECK
-- 해당 컬럼의 값에 조건식을 추가하여 조건을 만족하지 않는
-- 값을 넣을 경우, 입력이 되지 않도록 막는다. 
CREATE TABLE TBL_SUBJECT (
	SUBJECT_ID NUMBER PRIMARY KEY, -- 각 과목을 고유하게 식별할 수 있는 ID 열	
	TEACHER_ID NUMBER FOREIGN KEY, -- 교수의 ID를 교수 테이블에서 현재 TEACHER_ID와 연결하여 관계를 형성한다.
	BOOK_NAME VARCHAR(50) UNIQUE, -- 각 과목에서 사용하는 교재는 다른 과목과 겹치지 않는다.
	CLASS_NAME CHAR(1) NOT NULL, -- 각 과목을 강의하는 강의장은 비워둘 수 없다.
	STUDENT_AMOUNT NUMBER CHECK (STUDENT_AMOUNT > 0)
	-- 각 과목의 최대 수용 수강생의 수는 0이나 음수가 되면 안 된다.
);

-- 6. DEFAULT
-- 하나의 레코드를 입력할 때, DEFAULT 제약조건이 걸린 컬럼에 값을
-- 전달하지 않을 경우, 기본값이 대신 들어가도록 설정할 수 있다.
CREATE TABLE TBL_SUBJECT (
	SUBJECT_ID NUMBER PRIMARY KEY, -- 각 과목을 고유하게 식별할 수 있는 ID 열	
--	TEACHER_ID NUMBER FOREIGN KEY, -- 교수의 ID를 교수 테이블에서 현재 TEACHER_ID와 연결하여 관계를 형성한다.
	BOOK_NAME VARCHAR(50) UNIQUE, -- 각 과목에서 사용하는 교재는 다른 과목과 겹치지 않는다.
	CLASS_NAME CHAR(1) NOT NULL, -- 각 과목을 강의하는 강의장은 비워둘 수 없다.
	STUDENT_AMOUNT NUMBER DEFAULT 25 CHECK (STUDENT_AMOUNT > 0) 
	-- 각 과목의 최대 수용 수강생의 수는 0이나 음수가 되면 안 된다.
	-- 수강생 수를 입력하지 않으면 25라는 값이 기본값으로 입력된다.
	-- -> NULL값이 들어가지 않는다.
);

DROP TABLE TBL_SUBJECT;






