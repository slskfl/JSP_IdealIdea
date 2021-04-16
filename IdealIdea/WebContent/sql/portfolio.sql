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
VALUES(board_seq.nextval, '������', 'admin@gmail.com', '�� ������ ���� �ð�', '2021-04-07 10~17�ñ��� Ȩ������ ���˽ð��Դϴ�. �̿뿡 ������ ����� �˼��մϴ�.');

INSERT INTO noticeboard(num, name, email, title, content)
VALUES(board_seq.nextval, '������', 'admin@gmail.com','ȸ������ �� �ʵ�����', '�ݵ�� �Ϲ� ����ڿ� ������� �������ֽʽÿ�. ������� �����ϼ��� ��� �ݵ�� ���� ������ �����ϼž��մϴ�.');



select * from noticeboard;