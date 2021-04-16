show user;

CREATE TABLE noticeBoard(
    num         NUMBER(5)       PRIMARY KEY,
    name        VARCHAR2(20)    NOT NULL,
    email       VARCHAR2(30)    NOT NULL,
    title       VARCHAR2(30)    NOT NULL,
    content     VARCHAR2(3000)  NOT NULL,
    readcount   NUMBER(4)       DEFAULT 0,
    writedate   date            DEFAULT SYSDATE
);
CREATE SEQUENCE board_seq START WITH 1 INCREMENT BY 1;

INSERT INTO noticeboard(num, name, email, title, content)
VALUES(board_seq.nextval, '관리자', 'admin@gmail.com', '웹 페이지 점검 시간', '2021-04-07 10~17시까지 홈페이지 점검시간입니다. 이용에 불편을 드려서 죄송합니다.');

INSERT INTO noticeboard(num, name, email, title, content)
VALUES(board_seq.nextval, '관리자', 'admin@gmail.com','회원가입 시 필독사항', '반드시 일반 사용자와 사업가를 선택해주십시오. 사업가를 선택하셨을 경우 반드시 증명 서류를 제출하셔야합니다.');



select * from noticeboard;