show user;

create table members(
    id		VARCHAR(30) 	primary key,
    name	VARCHAR(10)		not null,
    pw		VARCHAR(50)		not null,
    tel		VARCHAR(20)		not null,
    email	VARCHAR(100)	not null,
    address	VARCHAR(100),
    grade	INT             default 1
);

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
VALUES(board_seq.nextval, '������', 'admin@gmail.com', '�� ������ ���� �ð�', '2021-04-07 10~17�ñ��� Ȩ������ ���˽ð��Դϴ�. �̿뿡 ������ ����� �˼��մϴ�.');

INSERT INTO noticeboard(num, name, email, title, content)
VALUES(board_seq.nextval, '������', 'admin@gmail.com','ȸ������ �� �ʵ�����', '�ݵ�� �Ϲ� ����ڿ� ������� �������ֽʽÿ�. ������� �����ϼ��� ��� �ݵ�� ���� ������ �����ϼž��մϴ�.');



select * from noticeboard;

CREATE TABLE UserBoard(
    num         NUMBER(5)       PRIMARY KEY,
    name        VARCHAR2(20)    NOT NULL,
    email       VARCHAR2(30)    NOT NULL,
    title       VARCHAR2(30)    NOT NULL,
    content     VARCHAR2(3000)  NOT NULL,
    readcount   NUMBER(4)       DEFAULT 0,
    writedate   date            DEFAULT SYSDATE
);

CREATE SEQUENCE userboard_seq START WITH 1 INCREMENT BY 1;

INSERT INTO UserBoard(num, name, email, title, content)
VALUES(board_seq.nextval, 'test1', 'test1@gmail.com', '사용자 게시판', '사용자 게시판 테스트');

SELECT
    *
FROM userboard;

CREATE TABLE BusinessBoard(
    num         NUMBER(5)       PRIMARY KEY,
    name        VARCHAR2(20)    NOT NULL,
    email       VARCHAR2(30)    NOT NULL,
    title       VARCHAR2(30)    NOT NULL,
    content     VARCHAR2(3000)  NOT NULL,
    readcount   NUMBER(4)       DEFAULT 0,
    writedate   date            DEFAULT SYSDATE
);

CREATE SEQUENCE businessboard_seq START WITH 1 INCREMENT BY 1;

INSERT INTO businessboard(num, name, email, title, content)
VALUES(board_seq.nextval, 'test1', 'test1@gmail.com', '사업가 게시판', '사업가 게시판 테스트');

SELECT
    *
FROM businessboard;

COMMIT;

ALTER TABLE noticeBoard ADD filename VARCHAR2(50);
ALTER TABLE userBoard ADD filename VARCHAR2(50);
ALTER TABLE businessBoard ADD filename VARCHAR2(50);