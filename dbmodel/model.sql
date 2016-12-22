-- ������û
DROP TABLE IF EXISTS LECT_APPY RESTRICT;

-- ����
DROP TABLE IF EXISTS LECT RESTRICT;

-- ����
DROP TABLE IF EXISTS TCHER RESTRICT;

-- �Ŵ���
DROP TABLE IF EXISTS MGR RESTRICT;

-- ���ǽ�
DROP TABLE IF EXISTS CROOM RESTRICT;

-- �л�
DROP TABLE IF EXISTS STUD RESTRICT;

-- ���ǽǻ���
DROP TABLE IF EXISTS CROOM_PHOT RESTRICT;

-- �������
DROP TABLE IF EXISTS TCH_PHOT RESTRICT;

-- �������
DROP TABLE IF EXISTS TCHR_LECT RESTRICT;

-- ȸ��
DROP TABLE IF EXISTS MEMB RESTRICT;

-- �ڵ�����
DROP TABLE IF EXISTS CODE RESTRICT;

-- ������
DROP TABLE IF EXISTS CONTENT RESTRICT;

-- �Խ���
DROP TABLE IF EXISTS BOARD RESTRICT;

-- �ǵ�
DROP TABLE IF EXISTS FEED RESTRICT;

-- �±�
DROP TABLE IF EXISTS TAG RESTRICT;

-- �ȷ���
DROP TABLE IF EXISTS FOLLOW RESTRICT;

-- ������Ʈ
DROP TABLE IF EXISTS PROJ RESTRICT;

-- ������Ʈȸ��
DROP TABLE IF EXISTS PROJ_MEMB RESTRICT;

-- �ڷ��
DROP TABLE IF EXISTS DOWNLOAD RESTRICT;

-- ����
DROP TABLE IF EXISTS TODO RESTRICT;

-- ������û
CREATE TABLE LECT_APPY (
	LANO INTEGER  NOT NULL COMMENT '������û�Ϸù�ȣ', -- ������û�Ϸù�ȣ
	LNO  INTEGER  NOT NULL COMMENT '�����Ϸù�ȣ', -- �����Ϸù�ȣ
	SNO  INTEGER  NOT NULL COMMENT '�л��Ϸù�ȣ', -- �л��Ϸù�ȣ
	RDT  DATETIME NOT NULL COMMENT '��û��', -- ��û��
	STAT INTEGER  NULL     COMMENT '��û����' -- ��û����
)
COMMENT '������û';

-- ������û
ALTER TABLE LECT_APPY
	ADD CONSTRAINT PK_LECT_APPY -- ������û �⺻Ű
		PRIMARY KEY (
			LANO -- ������û�Ϸù�ȣ
		);

-- ������û ����ũ �ε���
CREATE UNIQUE INDEX UIX_LECT_APPY
	ON LECT_APPY ( -- ������û
		LNO ASC, -- �����Ϸù�ȣ
		SNO ASC  -- �л��Ϸù�ȣ
	);

ALTER TABLE LECT_APPY
	MODIFY COLUMN LANO INTEGER NOT NULL AUTO_INCREMENT COMMENT '������û�Ϸù�ȣ';

-- ����
CREATE TABLE LECT (
	LNO   INTEGER      NOT NULL COMMENT '�����Ϸù�ȣ', -- �����Ϸù�ȣ
	CRMNO INTEGER      NULL     COMMENT '���ǽ��Ϸù�ȣ', -- ���ǽ��Ϸù�ȣ
	MRNO  INTEGER      NULL     COMMENT '�Ŵ����Ϸù�ȣ', -- �Ŵ����Ϸù�ȣ
	TITL  VARCHAR(255) NOT NULL COMMENT '����', -- ����
	DSCP  TEXT         NOT NULL COMMENT '����', -- ����
	SDT   DATE         NOT NULL COMMENT '������', -- ������
	EDT   DATE         NOT NULL COMMENT '������', -- ������
	QTY   INTEGER      NOT NULL COMMENT '���������ο�', -- ���������ο�
	PRIC  INTEGER      NULL     COMMENT '������', -- ������
	THRS  INTEGER      NOT NULL COMMENT '�ѽð�' -- �ѽð�
)
COMMENT '����';

-- ����
ALTER TABLE LECT
	ADD CONSTRAINT PK_LECT -- ���� �⺻Ű
		PRIMARY KEY (
			LNO -- �����Ϸù�ȣ
		);

-- ���� �ε���
CREATE INDEX IX_LECT
	ON LECT( -- ����
		TITL ASC -- ����
	);

ALTER TABLE LECT
	MODIFY COLUMN LNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '�����Ϸù�ȣ';

-- ����
CREATE TABLE TCHER (
	TNO  INTEGER      NOT NULL COMMENT '�����Ϸù�ȣ', -- �����Ϸù�ȣ
	HMPG VARCHAR(255) NULL     COMMENT 'Ȩ������', -- Ȩ������
	FCBK VARCHAR(255) NULL     COMMENT '���̽���', -- ���̽���
	TWIT VARCHAR(255) NULL     COMMENT 'Ʈ����' -- Ʈ����
)
COMMENT '����';

-- ����
ALTER TABLE TCHER
	ADD CONSTRAINT PK_TCHER -- ���� �⺻Ű
		PRIMARY KEY (
			TNO -- �����Ϸù�ȣ
		);

-- �Ŵ���
CREATE TABLE MGR (
	MRNO INTEGER      NOT NULL COMMENT '�Ŵ����Ϸù�ȣ', -- �Ŵ����Ϸù�ȣ
	POSI VARCHAR(100) NULL     COMMENT '����', -- ����
	FAX  VARCHAR(30)  NULL     COMMENT '�ѽ�', -- �ѽ�
	PATH VARCHAR(255) NOT NULL COMMENT '�������ϰ��' -- �������ϰ��
)
COMMENT '�Ŵ���';

-- �Ŵ���
ALTER TABLE MGR
	ADD CONSTRAINT PK_MGR -- �Ŵ��� �⺻Ű
		PRIMARY KEY (
			MRNO -- �Ŵ����Ϸù�ȣ
		);

-- ���ǽ�
CREATE TABLE CROOM (
	CRMNO INTEGER      NOT NULL COMMENT '���ǽ��Ϸù�ȣ', -- ���ǽ��Ϸù�ȣ
	NAME  VARCHAR(100) NOT NULL COMMENT '�̸�' -- �̸�
)
COMMENT '���ǽ�';

-- ���ǽ�
ALTER TABLE CROOM
	ADD CONSTRAINT PK_CROOM -- ���ǽ� �⺻Ű
		PRIMARY KEY (
			CRMNO -- ���ǽ��Ϸù�ȣ
		);

-- ���ǽ� ����ũ �ε���
CREATE UNIQUE INDEX UIX_CROOM
	ON CROOM ( -- ���ǽ�
		NAME ASC -- �̸�
	);

ALTER TABLE CROOM
	MODIFY COLUMN CRMNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '���ǽ��Ϸù�ȣ';

-- �л�
CREATE TABLE STUD (
	SNO      INTEGER      NOT NULL COMMENT '�л��Ϸù�ȣ', -- �л��Ϸù�ȣ
	WORK     CHAR(1)      NOT NULL COMMENT '��������', -- ��������
	LST_SCHL VARCHAR(100) NULL     COMMENT '�����з�', -- �����з�
	SCHL_NM  VARCHAR(100) NULL     COMMENT '�б���', -- �б���
	PST_NO   VARCHAR(10)  NULL     COMMENT '�����ȣ', -- �����ȣ
	BAS_ADR  VARCHAR(255) NULL     COMMENT '�⺻�ּ�', -- �⺻�ּ�
	DET_ADR  VARCHAR(255) NULL     COMMENT '���ּ�', -- ���ּ�
	PATH     VARCHAR(255) NULL     COMMENT '�������ϰ��' -- �������ϰ��
)
COMMENT '�л�';

-- �л�
ALTER TABLE STUD
	ADD CONSTRAINT PK_STUD -- �л� �⺻Ű
		PRIMARY KEY (
			SNO -- �л��Ϸù�ȣ
		);

-- ���ǽǻ���
CREATE TABLE CROOM_PHOT (
	CPNO  INTEGER      NOT NULL COMMENT '���ǽǻ����Ϸù�ȣ', -- ���ǽǻ����Ϸù�ȣ
	CRMNO INTEGER      NOT NULL COMMENT '���ǽ��Ϸù�ȣ', -- ���ǽ��Ϸù�ȣ
	PATH  VARCHAR(255) NOT NULL COMMENT '���ϰ��' -- ���ϰ��
)
COMMENT '���ǽǻ���';

-- ���ǽǻ���
ALTER TABLE CROOM_PHOT
	ADD CONSTRAINT PK_CROOM_PHOT -- ���ǽǻ��� �⺻Ű
		PRIMARY KEY (
			CPNO -- ���ǽǻ����Ϸù�ȣ
		);

ALTER TABLE CROOM_PHOT
	MODIFY COLUMN CPNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '���ǽǻ����Ϸù�ȣ';

-- �������
CREATE TABLE TCH_PHOT (
	TPNO INTEGER      NOT NULL COMMENT '��������Ϸù�ȣ', -- ��������Ϸù�ȣ
	TNO  INTEGER      NULL     COMMENT '�����Ϸù�ȣ', -- �����Ϸù�ȣ
	PATH VARCHAR(255) NOT NULL COMMENT '���ϰ��' -- ���ϰ��
)
COMMENT '�������';

-- �������
ALTER TABLE TCH_PHOT
	ADD CONSTRAINT PK_TCH_PHOT -- ������� �⺻Ű
		PRIMARY KEY (
			TPNO -- ��������Ϸù�ȣ
		);

ALTER TABLE TCH_PHOT
	MODIFY COLUMN TPNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '��������Ϸù�ȣ';

-- �������
CREATE TABLE TCHR_LECT (
	LNO INTEGER NOT NULL COMMENT '�����Ϸù�ȣ', -- �����Ϸù�ȣ
	TNO INTEGER NOT NULL COMMENT '�����Ϸù�ȣ' -- �����Ϸù�ȣ
)
COMMENT '�������';

-- �������
ALTER TABLE TCHR_LECT
	ADD CONSTRAINT PK_TCHR_LECT -- ������� �⺻Ű
		PRIMARY KEY (
			LNO, -- �����Ϸù�ȣ
			TNO  -- �����Ϸù�ȣ
		);

-- ȸ��
CREATE TABLE MEMB (
	MNO   INTEGER      NOT NULL COMMENT 'ȸ���Ϸù�ȣ', -- ȸ���Ϸù�ȣ
	NAME  VARCHAR(100) NOT NULL COMMENT '�̸�', -- �̸�
	TEL   VARCHAR(30)  NOT NULL COMMENT '��ȭ', -- ��ȭ
	EMAIL VARCHAR(40)  NOT NULL COMMENT '�̸���', -- �̸���
	PWD   VARCHAR(50)  NOT NULL COMMENT '��ȣ' -- ��ȣ
)
COMMENT 'ȸ��';

-- ȸ��
ALTER TABLE MEMB
	ADD CONSTRAINT PK_MEMB -- ȸ�� �⺻Ű
		PRIMARY KEY (
			MNO -- ȸ���Ϸù�ȣ
		);

-- ȸ�� ����ũ �ε���
CREATE UNIQUE INDEX UIX_MEMB
	ON MEMB ( -- ȸ��
		EMAIL ASC -- �̸���
	);

-- ȸ�� �ε���
CREATE INDEX IX_MEMB
	ON MEMB( -- ȸ��
		NAME ASC -- �̸�
	);

ALTER TABLE MEMB
	MODIFY COLUMN MNO INTEGER NOT NULL AUTO_INCREMENT COMMENT 'ȸ���Ϸù�ȣ';

-- �ڵ�����
CREATE TABLE CODE (
	CONO  INTEGER     NOT NULL COMMENT '�������Ϸù�ȣ', -- �������Ϸù�ȣ
	CONTS TEXT        NOT NULL COMMENT '�ڵ�', -- �ڵ�
	PL    VARCHAR(10) NULL     COMMENT '���α׷��־���' -- ���α׷��־���
)
COMMENT '�ڵ�����';

-- �ڵ�����
ALTER TABLE CODE
	ADD CONSTRAINT PK_CODE -- �ڵ����� �⺻Ű
		PRIMARY KEY (
			CONO -- �������Ϸù�ȣ
		);

-- ������
CREATE TABLE CONTENT (
	CONO   INTEGER  NOT NULL COMMENT '�������Ϸù�ȣ', -- �������Ϸù�ȣ
	MNO    INTEGER  NOT NULL COMMENT 'ȸ���Ϸù�ȣ', -- ȸ���Ϸù�ȣ
	RDT    DATETIME NOT NULL COMMENT '�����', -- �����
	VW_CNT INTEGER  NOT NULL COMMENT '��ȸ��' -- ��ȸ��
)
COMMENT '������';

-- ������
ALTER TABLE CONTENT
	ADD CONSTRAINT PK_CONTENT -- ������ �⺻Ű
		PRIMARY KEY (
			CONO -- �������Ϸù�ȣ
		);

-- �Խ���
CREATE TABLE BOARD (
	CONO  INTEGER      NOT NULL COMMENT '�������Ϸù�ȣ', -- �������Ϸù�ȣ
	TITL  VARCHAR(255) NOT NULL COMMENT '����', -- ����
	CONTS TEXT         NOT NULL COMMENT '����' -- ����
)
COMMENT '�Խ���';

-- �Խ���
ALTER TABLE BOARD
	ADD CONSTRAINT PK_BOARD -- �Խ��� �⺻Ű
		PRIMARY KEY (
			CONO -- �������Ϸù�ȣ
		);

-- �ǵ�
CREATE TABLE FEED (
	CONO  INTEGER NOT NULL COMMENT '�������Ϸù�ȣ', -- �������Ϸù�ȣ
	CONTS TEXT    NULL     COMMENT '�ǵ峻��' -- �ǵ峻��
)
COMMENT '�ǵ�';

-- �ǵ�
ALTER TABLE FEED
	ADD CONSTRAINT PK_FEED -- �ǵ� �⺻Ű
		PRIMARY KEY (
			CONO -- �������Ϸù�ȣ
		);

-- �±�
CREATE TABLE TAG (
	COL    INTEGER     NOT NULL COMMENT '�±��Ϸù�ȣ', -- �±��Ϸù�ȣ
	CONO   INTEGER     NOT NULL COMMENT '�������Ϸù�ȣ', -- �������Ϸù�ȣ
	TAG_NM VARCHAR(50) NOT NULL COMMENT '�±׸�' -- �±׸�
)
COMMENT '�±�';

-- �±�
ALTER TABLE TAG
	ADD CONSTRAINT PK_TAG -- �±� �⺻Ű
		PRIMARY KEY (
			COL -- �±��Ϸù�ȣ
		);

-- �ȷ���
CREATE TABLE FOLLOW (
	FOWR_NO INTEGER NOT NULL COMMENT 'ȸ���Ϸù�ȣ', -- ȸ���Ϸù�ȣ
	FWNG_NO INTEGER NOT NULL COMMENT '�ȷ��״��ȸ���Ϸù�ȣ' -- �ȷ��״��ȸ���Ϸù�ȣ
)
COMMENT '�ȷ���';

-- �ȷ���
ALTER TABLE FOLLOW
	ADD CONSTRAINT PK_FOLLOW -- �ȷ��� �⺻Ű
		PRIMARY KEY (
			FOWR_NO, -- ȸ���Ϸù�ȣ
			FWNG_NO  -- �ȷ��״��ȸ���Ϸù�ȣ
		);

-- ������Ʈ
CREATE TABLE PROJ (
	PJNO  INTEGER      NOT NULL COMMENT '������Ʈ�Ϸù�ȣ', -- ������Ʈ�Ϸù�ȣ
	MNO   INTEGER      NOT NULL COMMENT 'ȸ���Ϸù�ȣ', -- ȸ���Ϸù�ȣ
	TITL  VARCHAR(255) NOT NULL COMMENT '������Ʈ��', -- ������Ʈ��
	CONTS TEXT         NOT NULL COMMENT '����', -- ����
	RDT   DATETIME     NOT NULL COMMENT '�����', -- �����
	SDT   DATE         NOT NULL COMMENT '������', -- ������
	EDT   DATE         NOT NULL COMMENT '������' -- ������
)
COMMENT '������Ʈ';

-- ������Ʈ
ALTER TABLE PROJ
	ADD CONSTRAINT PK_PROJ -- ������Ʈ �⺻Ű
		PRIMARY KEY (
			PJNO -- ������Ʈ�Ϸù�ȣ
		);

-- ������Ʈȸ��
CREATE TABLE PROJ_MEMB (
	PJNO INTEGER     NOT NULL COMMENT '������Ʈ�Ϸù�ȣ', -- ������Ʈ�Ϸù�ȣ
	MNO  INTEGER     NOT NULL COMMENT 'ȸ���Ϸù�ȣ', -- ȸ���Ϸù�ȣ
	ROL  VARCHAR(10) NULL     COMMENT '����' -- ����
)
COMMENT '������Ʈȸ��';

-- ������Ʈȸ��
ALTER TABLE PROJ_MEMB
	ADD CONSTRAINT PK_PROJ_MEMB -- ������Ʈȸ�� �⺻Ű
		PRIMARY KEY (
			PJNO, -- ������Ʈ�Ϸù�ȣ
			MNO   -- ȸ���Ϸù�ȣ
		);

-- �ڷ��
CREATE TABLE DOWNLOAD (
	CONO INTEGER      NOT NULL COMMENT '�������Ϸù�ȣ', -- �������Ϸù�ȣ
	PATH VARCHAR(255) NOT NULL COMMENT '���ϰ��' -- ���ϰ��
)
COMMENT '�ڷ��';

-- �ڷ��
ALTER TABLE DOWNLOAD
	ADD CONSTRAINT PK_DOWNLOAD -- �ڷ�� �⺻Ű
		PRIMARY KEY (
			CONO -- �������Ϸù�ȣ
		);

-- ����
CREATE TABLE TODO (
	TDNO  INTEGER      NOT NULL COMMENT '�����Ϸù�ȣ', -- �����Ϸù�ȣ
	PJNO  INTEGER      NULL     COMMENT '������Ʈ�Ϸù�ȣ', -- ������Ʈ�Ϸù�ȣ
	MNO   INTEGER      NULL     COMMENT 'ȸ���Ϸù�ȣ', -- ȸ���Ϸù�ȣ
	SEQ   INTEGER      NOT NULL COMMENT '����', -- ����
	CONTS VARCHAR(255) NOT NULL COMMENT '����', -- ����
	STAT  VARCHAR(50)  NULL     COMMENT '����', -- ����
	STDT  DATETIME     NULL     COMMENT '���¼�����' -- ���¼�����
)
COMMENT '����';

-- ����
ALTER TABLE TODO
	ADD CONSTRAINT PK_TODO -- ���� �⺻Ű
		PRIMARY KEY (
			TDNO -- �����Ϸù�ȣ
		);

-- ������û
ALTER TABLE LECT_APPY
	ADD CONSTRAINT FK_LECT_TO_LECT_APPY -- ���� -> ������û
		FOREIGN KEY (
			LNO -- �����Ϸù�ȣ
		)
		REFERENCES LECT ( -- ����
			LNO -- �����Ϸù�ȣ
		);

-- ������û
ALTER TABLE LECT_APPY
	ADD CONSTRAINT FK_STUD_TO_LECT_APPY -- �л� -> ������û
		FOREIGN KEY (
			SNO -- �л��Ϸù�ȣ
		)
		REFERENCES STUD ( -- �л�
			SNO -- �л��Ϸù�ȣ
		);

-- ����
ALTER TABLE LECT
	ADD CONSTRAINT FK_MGR_TO_LECT -- �Ŵ��� -> ����
		FOREIGN KEY (
			MRNO -- �Ŵ����Ϸù�ȣ
		)
		REFERENCES MGR ( -- �Ŵ���
			MRNO -- �Ŵ����Ϸù�ȣ
		);

-- ����
ALTER TABLE LECT
	ADD CONSTRAINT FK_CROOM_TO_LECT -- ���ǽ� -> ����
		FOREIGN KEY (
			CRMNO -- ���ǽ��Ϸù�ȣ
		)
		REFERENCES CROOM ( -- ���ǽ�
			CRMNO -- ���ǽ��Ϸù�ȣ
		);

-- ����
ALTER TABLE TCHER
	ADD CONSTRAINT FK_MEMB_TO_TCHER -- ȸ�� -> ����
		FOREIGN KEY (
			TNO -- �����Ϸù�ȣ
		)
		REFERENCES MEMB ( -- ȸ��
			MNO -- ȸ���Ϸù�ȣ
		);

-- �Ŵ���
ALTER TABLE MGR
	ADD CONSTRAINT FK_MEMB_TO_MGR -- ȸ�� -> �Ŵ���
		FOREIGN KEY (
			MRNO -- �Ŵ����Ϸù�ȣ
		)
		REFERENCES MEMB ( -- ȸ��
			MNO -- ȸ���Ϸù�ȣ
		);

-- �л�
ALTER TABLE STUD
	ADD CONSTRAINT FK_MEMB_TO_STUD -- ȸ�� -> �л�
		FOREIGN KEY (
			SNO -- �л��Ϸù�ȣ
		)
		REFERENCES MEMB ( -- ȸ��
			MNO -- ȸ���Ϸù�ȣ
		);

-- ���ǽǻ���
ALTER TABLE CROOM_PHOT
	ADD CONSTRAINT FK_CROOM_TO_CROOM_PHOT -- ���ǽ� -> ���ǽǻ���
		FOREIGN KEY (
			CRMNO -- ���ǽ��Ϸù�ȣ
		)
		REFERENCES CROOM ( -- ���ǽ�
			CRMNO -- ���ǽ��Ϸù�ȣ
		);

-- �������
ALTER TABLE TCH_PHOT
	ADD CONSTRAINT FK_TCHER_TO_TCH_PHOT -- ���� -> �������
		FOREIGN KEY (
			TNO -- �����Ϸù�ȣ
		)
		REFERENCES TCHER ( -- ����
			TNO -- �����Ϸù�ȣ
		);

-- �������
ALTER TABLE TCHR_LECT
	ADD CONSTRAINT FK_TCHER_TO_TCHR_LECT -- ���� -> �������
		FOREIGN KEY (
			TNO -- �����Ϸù�ȣ
		)
		REFERENCES TCHER ( -- ����
			TNO -- �����Ϸù�ȣ
		);

-- �������
ALTER TABLE TCHR_LECT
	ADD CONSTRAINT FK_LECT_TO_TCHR_LECT -- ���� -> �������
		FOREIGN KEY (
			LNO -- �����Ϸù�ȣ
		)
		REFERENCES LECT ( -- ����
			LNO -- �����Ϸù�ȣ
		);

-- �ڵ�����
ALTER TABLE CODE
	ADD CONSTRAINT FK_CONTENT_TO_CODE -- ������ -> �ڵ�����
		FOREIGN KEY (
			CONO -- �������Ϸù�ȣ
		)
		REFERENCES CONTENT ( -- ������
			CONO -- �������Ϸù�ȣ
		);

-- ������
ALTER TABLE CONTENT
	ADD CONSTRAINT FK_MEMB_TO_CONTENT -- ȸ�� -> ������
		FOREIGN KEY (
			MNO -- ȸ���Ϸù�ȣ
		)
		REFERENCES MEMB ( -- ȸ��
			MNO -- ȸ���Ϸù�ȣ
		);

-- �Խ���
ALTER TABLE BOARD
	ADD CONSTRAINT FK_CONTENT_TO_BOARD -- ������ -> �Խ���
		FOREIGN KEY (
			CONO -- �������Ϸù�ȣ
		)
		REFERENCES CONTENT ( -- ������
			CONO -- �������Ϸù�ȣ
		);

-- �ǵ�
ALTER TABLE FEED
	ADD CONSTRAINT FK_CONTENT_TO_FEED -- ������ -> �ǵ�
		FOREIGN KEY (
			CONO -- �������Ϸù�ȣ
		)
		REFERENCES CONTENT ( -- ������
			CONO -- �������Ϸù�ȣ
		);

-- �±�
ALTER TABLE TAG
	ADD CONSTRAINT FK_CONTENT_TO_TAG -- ������ -> �±�
		FOREIGN KEY (
			CONO -- �������Ϸù�ȣ
		)
		REFERENCES CONTENT ( -- ������
			CONO -- �������Ϸù�ȣ
		);

-- �ȷ���
ALTER TABLE FOLLOW
	ADD CONSTRAINT FK_MEMB_TO_FOLLOW -- ȸ�� -> �ȷ���
		FOREIGN KEY (
			FOWR_NO -- ȸ���Ϸù�ȣ
		)
		REFERENCES MEMB ( -- ȸ��
			MNO -- ȸ���Ϸù�ȣ
		);

-- �ȷ���
ALTER TABLE FOLLOW
	ADD CONSTRAINT FK_MEMB_TO_FOLLOW2 -- ȸ�� -> �ȷ���2
		FOREIGN KEY (
			FWNG_NO -- �ȷ��״��ȸ���Ϸù�ȣ
		)
		REFERENCES MEMB ( -- ȸ��
			MNO -- ȸ���Ϸù�ȣ
		);

-- ������Ʈ
ALTER TABLE PROJ
	ADD CONSTRAINT FK_MEMB_TO_PROJ -- ȸ�� -> ������Ʈ
		FOREIGN KEY (
			MNO -- ȸ���Ϸù�ȣ
		)
		REFERENCES MEMB ( -- ȸ��
			MNO -- ȸ���Ϸù�ȣ
		);

-- ������Ʈȸ��
ALTER TABLE PROJ_MEMB
	ADD CONSTRAINT FK_PROJ_TO_PROJ_MEMB -- ������Ʈ -> ������Ʈȸ��
		FOREIGN KEY (
			PJNO -- ������Ʈ�Ϸù�ȣ
		)
		REFERENCES PROJ ( -- ������Ʈ
			PJNO -- ������Ʈ�Ϸù�ȣ
		);

-- ������Ʈȸ��
ALTER TABLE PROJ_MEMB
	ADD CONSTRAINT FK_MEMB_TO_PROJ_MEMB -- ȸ�� -> ������Ʈȸ��
		FOREIGN KEY (
			MNO -- ȸ���Ϸù�ȣ
		)
		REFERENCES MEMB ( -- ȸ��
			MNO -- ȸ���Ϸù�ȣ
		);

-- �ڷ��
ALTER TABLE DOWNLOAD
	ADD CONSTRAINT FK_CONTENT_TO_DOWNLOAD -- ������ -> �ڷ��
		FOREIGN KEY (
			CONO -- �������Ϸù�ȣ
		)
		REFERENCES CONTENT ( -- ������
			CONO -- �������Ϸù�ȣ
		);

-- ����
ALTER TABLE TODO
	ADD CONSTRAINT FK_PROJ_MEMB_TO_TODO -- ������Ʈȸ�� -> ����
		FOREIGN KEY (
			PJNO, -- ������Ʈ�Ϸù�ȣ
			MNO   -- ȸ���Ϸù�ȣ
		)
		REFERENCES PROJ_MEMB ( -- ������Ʈȸ��
			PJNO, -- ������Ʈ�Ϸù�ȣ
			MNO   -- ȸ���Ϸù�ȣ
		);