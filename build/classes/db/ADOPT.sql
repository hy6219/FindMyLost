CREATE TABLE ADOPT(
	ADOPT_NO NUMBER PRIMARY KEY,
	ADOPT_WRITER VARCHAR2(200),
	ADOPT_PHONE VARCHAR2(100),
	ADOPT_TITLE VARCHAR2(100),
	ADOPT_SEX VARCHAR2(100),
	ADOPT_PLACE VARCHAR2(100),
	ADOPT_CONTENT VARCHAR2(1000),
	ADOPT_PHOTO VARCHAR2(100),
	ADOPT_EMAIL VARCHAR2(100),
	ADOPT_KIND VARCHAR2(100)
);



CREATE SEQUENCE ADOPT_SEQ NOCACHE;
SELECT * FROM ADOPT;

INSERT INTO ADOPT VALUES(ADOPT_SEQ.NEXTVAL,'김수호','01012341234','야야야야야','남자','서울시 송파구 송파동','이이이이이이','XXXXXXXX','asd123@naver.com','개');
INSERT INTO ADOPT VALUES(ADOPT_SEQ.NEXTVAL,'수호','01012341234','야야야야야','남자','서울시 송파구 송파동','이이이이이이','XXXXXXXX','asd123@naver.com','개');
INSERT INTO ADOPT VALUES(ADOPT_SEQ.NEXTVAL,'김호','01012341234','야야야야야','남자','서울시 송파구 송파동','이이이이이이','XXXXXXXX','asd123@naver.com','개');
INSERT INTO ADOPT VALUES(ADOPT_SEQ.NEXTVAL,'김수','01012341234','야야야야야','남자','서울시 송파구 송파동','이이이이이이','XXXXXXXX','asd123@naver.com','개');


