-- ȸ�� ������
insert into memb(mno, email, pwd, name, tel) values(1, 'user01@test.com', password('1111'), '�л�1', '111-1111');
insert into memb(mno, email, pwd, name, tel) values(2, 'user02@test.com', password('1111'), '�л�2', '111-1111');
insert into memb(mno, email, pwd, name, tel) values(3, 'user03@test.com', password('1111'), '�л�3', '111-1111');
insert into memb(mno, email, pwd, name, tel) values(4, 'user04@test.com', password('1111'), '�л�4', '111-1111');
insert into memb(mno, email, pwd, name, tel) values(5, 'user05@test.com', password('1111'), '�л�5', '111-1111');
insert into memb(mno, email, pwd, name, tel) values(6, 'user06@test.com', password('1111'), '�л�6', '111-1111');
insert into memb(mno, email, pwd, name, tel) values(7, 'user07@test.com', password('1111'), '�л�7', '111-1111');
insert into memb(mno, email, pwd, name, tel) values(8, 'user08@test.com', password('1111'), '�л�8', '111-1111');
insert into memb(mno, email, pwd, name, tel) values(9, 'user09@test.com', password('1111'), '�л�9', '111-1111');
insert into memb(mno, email, pwd, name, tel) values(10, 'user10@test.com', password('1111'), '�л�10', '111-1111');

insert into memb(mno, email, pwd, name, tel) values(21, 'user21@test.com', password('1111'), '����1', '111-1111');
insert into memb(mno, email, pwd, name, tel) values(22, 'user22@test.com', password('1111'), '����2', '111-1111');
insert into memb(mno, email, pwd, name, tel) values(23, 'user23@test.com', password('1111'), '����3', '111-1111');
insert into memb(mno, email, pwd, name, tel) values(24, 'user24@test.com', password('1111'), '����4', '111-1111');
insert into memb(mno, email, pwd, name, tel) values(25, 'user25@test.com', password('1111'), '����5', '111-1111');

insert into memb(mno, email, pwd, name, tel) values(31, 'user31@test.com', password('1111'), '�Ŵ���1', '111-1111');
insert into memb(mno, email, pwd, name, tel) values(32, 'user32@test.com', password('1111'), '�Ŵ���2', '111-1111');
insert into memb(mno, email, pwd, name, tel) values(33, 'user33@test.com', password('1111'), '�Ŵ���3', '111-1111');

-- �л� ������
insert into stud(sno, work, lst_schl, schl_nm) values(1, 'Y', '�л�', '��Ʈ���б�');
insert into stud(sno, work, lst_schl, schl_nm) values(2, 'Y', '�л�', '�ѱ����б�');
insert into stud(sno, work, lst_schl, schl_nm) values(3, 'Y', '�л�', '�Ϲ�����б�');
insert into stud(sno, work, lst_schl, schl_nm) values(4, 'N', '����', '��Ʈ����б�');
insert into stud(sno, work, lst_schl, schl_nm) values(5, 'N', '����', '��������б�');
insert into stud(sno, work, lst_schl, schl_nm) values(6, 'Y', '����', '�λ����б�');
insert into stud(sno, work, lst_schl, schl_nm) values(7, 'Y', '�л�', null);
insert into stud(sno, work, lst_schl, schl_nm) values(8, 'N', '�л�', null);
insert into stud(sno, work, lst_schl, schl_nm) values(9, 'Y', null, '��Ʈ����б�');
insert into stud(sno, work, lst_schl, schl_nm) values(10, 'N', null, '��������б�');

-- ���� ������
insert into tcher(tno, hmpg, fcbk, twit) values(21, 'http://www.user21.com', null, null);
insert into tcher(tno, hmpg, fcbk, twit) values(22, null, 'www.facebook.com/user22', null);
insert into tcher(tno, hmpg, fcbk, twit) values(23, null, 'www.facebook.com/user23', 'www.twitter.com/user23');
insert into tcher(tno, hmpg, fcbk, twit) values(24, null, null, 'www.twitter.com/user24');
insert into tcher(tno, hmpg, fcbk, twit) values(25, null, null, null);
-- �Ŵ����̸鼭 ����
insert into tcher(tno, hmpg, fcbk, twit) values(31, null, null, null);

-- ������� ������
insert into tch_phot(tpno, tno, path) values(1, 21, 't21_1.gif');
insert into tch_phot(tpno, tno, path) values(2, 21, 't21_2.gif');
insert into tch_phot(tpno, tno, path) values(3, 22, 't22_1.gif');
insert into tch_phot(tpno, tno, path) values(4, 23, 't23_1.gif');
insert into tch_phot(tpno, tno, path) values(5, 24, 't24_1.gif');
insert into tch_phot(tpno, tno, path) values(6, 24, 't24_2.gif');
insert into tch_phot(tpno, tno, path) values(7, 24, 't24_3.gif');
insert into tch_phot(tpno, tno, path) values(8, 25, 't25_1.gif');

-- �Ŵ��� ������
insert into mgr(mrno, posi, fax, path) values(31, '�븮', '111-1111', 'm31.gif');
insert into mgr(mrno, posi, fax, path) values(32, '����', '111-1111', 'm32.gif');
insert into mgr(mrno, posi, fax, path) values(33, '����', '111-1111', 'm33.gif');
-- �����̸鼭 �Ŵ���
insert into mgr(mrno, posi, fax, path) values(23, '����', '111-1111', 'm23.gif');

-- ���ǽ� ������
insert into croom(crmno, name) values(1, '����301');
insert into croom(crmno, name) values(2, '����303');
insert into croom(crmno, name) values(3, '����401');
insert into croom(crmno, name) values(4, '����402');
insert into croom(crmno, name) values(5, '����403');
insert into croom(crmno, name) values(6, '����404');
insert into croom(crmno, name) values(7, '����501');
insert into croom(crmno, name) values(8, '����502');
insert into croom(crmno, name) values(9, '����503');
insert into croom(crmno, name) values(10, '����504');
insert into croom(crmno, name) values(11, '����601');
insert into croom(crmno, name) values(12, '����602');
insert into croom(crmno, name) values(13, '����603');
insert into croom(crmno, name) values(14, '����701');
insert into croom(crmno, name) values(15, '����1');
insert into croom(crmno, name) values(16, '����2');
insert into croom(crmno, name) values(17, '����3');
insert into croom(crmno, name) values(18, '����4');

-- ���ǽ� ���� ������
insert into croom_phot(cpno, crmno, path) values(1, 1, 'cr1_1.gif');
insert into croom_phot(cpno, crmno, path) values(2, 1, 'cr1_2.gif');
insert into croom_phot(cpno, crmno, path) values(3, 3, 'cr3_1.gif');
insert into croom_phot(cpno, crmno, path) values(4, 4, 'cr4_1.gif');
insert into croom_phot(cpno, crmno, path) values(5, 4, 'cr4_2.gif');
insert into croom_phot(cpno, crmno, path) values(6, 4, 'cr4_3.gif');
insert into croom_phot(cpno, crmno, path) values(7, 10, 'cr10_1.gif');
insert into croom_phot(cpno, crmno, path) values(8, 11, 'cr11_1.gif');
insert into croom_phot(cpno, crmno, path) values(9, 15, 'cr15_1.gif');
insert into croom_phot(cpno, crmno, path) values(10, 17, 'cr17_1.gif');
insert into croom_phot(cpno, crmno, path) values(11, 17, 'cr17_2.gif');

-- ���� ������
insert into lect(lno, crmno, mrno, titl, dscp, sdt, edt, qty, pric, thrs)
values(1, null, null, '�ڹٱ���', '�ڹٱ��ʹ���', '2017-01-02', '2017-01-31', 30, 350000, 120);

insert into lect(lno, crmno, mrno, titl, dscp, sdt, edt, qty, pric, thrs)
values(2, null, null, '�ڹٱ���', '�ڹٱ��ʹ���', '2017-02-01', '2017-02-28', 30, 350000, 120);

insert into lect(lno, crmno, mrno, titl, dscp, sdt, edt, qty, pric, thrs)
values(3, null, null, '�ڹٱ���', '�ڹٱ��ʹ���', '2017-03-02', '2017-03-31', 30, 350000, 120);

insert into lect(lno, crmno, mrno, titl, dscp, sdt, edt, qty, pric, thrs)
values(4, null, null, 'HTML5���α׷���', 'HTML����', '2017-01-02', '2017-01-20', 30, 150000, 40);

insert into lect(lno, crmno, mrno, titl, dscp, sdt, edt, qty, pric, thrs)
values(5, null, null, 'HTML5���α׷���', 'HTML����', '2017-02-15', '2017-03-05', 30, 350000, 120);

insert into lect(lno, crmno, mrno, titl, dscp, sdt, edt, qty, pric, thrs)
values(6, null, null, '���ǹ��缺����', '�����߹���', '2017-03-02', '2017-08-30', 30, 6000000, 960);

insert into lect(lno, crmno, mrno, titl, dscp, sdt, edt, qty, pric, thrs)
values(7, null, null, '��&�۾缺����', '�����۹���', '2017-04-01', '2017-09-30', 30, 6000000, 960);

insert into lect(lno, crmno, mrno, titl, dscp, sdt, edt, qty, pric, thrs)
values(8, null, null, '.NET����', '.NET����', '2017-05-01', '2017-10-30', 30, 6000000, 960);

insert into lect(lno, crmno, mrno, titl, dscp, sdt, edt, qty, pric, thrs)
values(9, null, null, 'IoT����', 'IoT����', '2017-06-01', '2017-11-30', 30, 6000000, 960);

insert into lect(lno, crmno, mrno, titl, dscp, sdt, edt, qty, pric, thrs)
values(10, null, null, '�ڹٱ���(�ָ���)1��', '�ڹٱ���', '2017-06-01', '2017-07-30', 30, 450000, 40);

insert into lect(lno, crmno, mrno, titl, dscp, sdt, edt, qty, pric, thrs)
values(11, null, null, '�ڹٱ���(�ָ���)2��', '�ڹٱ���', '2017-06-01', '2017-07-30', 30, 450000, 40);

insert into lect(lno, crmno, mrno, titl, dscp, sdt, edt, qty, pric, thrs)
values(12, null, null, '�ڹٱ���(�ָ���)3��', '�ڹٱ���', '2017-07-01', '2017-08-30', 30, 450000, 40);

insert into lect(lno, crmno, mrno, titl, dscp, sdt, edt, qty, pric, thrs)
values(13, null, null, '�ڹٱ���(�ָ���)4��', '�ڹٱ���', '2017-07-01', '2017-08-30', 30, 450000, 40);

-- ���ǽ� ����
update lect set crmno=1 where lno=1;
update lect set crmno=2 where lno=2;
update lect set crmno=5 where lno=4;
update lect set crmno=5 where lno=5;
update lect set crmno=15 where lno=6;
update lect set crmno=16 where lno=7;
update lect set crmno=7 where lno=9;
update lect set crmno=1 where lno=10;
update lect set crmno=15 where lno=13;

-- �Ŵ��� ����
update lect set mrno=31 where lno=1;
update lect set mrno=32 where lno=2;
update lect set mrno=33 where lno=3;
update lect set mrno=31 where lno=6;
update lect set mrno=32 where lno=7;
update lect set mrno=32 where lno=9;

-- ���� ����
insert into tchr_lect(lno, tno) values(1, 21);
insert into tchr_lect(lno, tno) values(1, 22);
insert into tchr_lect(lno, tno) values(1, 24);
insert into tchr_lect(lno, tno) values(2, 23);
insert into tchr_lect(lno, tno) values(3, 24);
insert into tchr_lect(lno, tno) values(4, 24);
insert into tchr_lect(lno, tno) values(5, 22);
insert into tchr_lect(lno, tno) values(8, 21);
insert into tchr_lect(lno, tno) values(8, 23);
insert into tchr_lect(lno, tno) values(8, 24);

-- ������û ������
insert into lect_appy(lano, lno, sno, rdt) values(1, 1, 1, '2016-11-28');
insert into lect_appy(lano, lno, sno, rdt) values(2, 1, 2, '2016-11-28');
insert into lect_appy(lano, lno, sno, rdt) values(3, 1, 3, '2016-12-01');
insert into lect_appy(lano, lno, sno, rdt) values(4, 1, 4, '2016-12-02');
insert into lect_appy(lano, lno, sno, rdt) values(5, 1, 7, '2016-12-05');
insert into lect_appy(lano, lno, sno, rdt) values(6, 1, 8, '2016-12-05');

insert into lect_appy(lano, lno, sno, rdt) values(7, 5, 1, '2016-11-28');
insert into lect_appy(lano, lno, sno, rdt) values(8, 5, 2, '2016-11-29');
insert into lect_appy(lano, lno, sno, rdt) values(9, 5, 3, '2016-11-30');
insert into lect_appy(lano, lno, sno, rdt) values(10, 5, 5, '2016-12-01');
insert into lect_appy(lano, lno, sno, rdt) values(11, 5, 6, '2016-12-01');
insert into lect_appy(lano, lno, sno, rdt) values(12, 5, 7, '2016-12-02');
insert into lect_appy(lano, lno, sno, rdt) values(13, 5, 9, '2016-12-03');

insert into lect_appy(lano, lno, sno, rdt) values(14, 8, 1, '2016-12-03');
insert into lect_appy(lano, lno, sno, rdt) values(15, 8, 2, '2016-12-03');
insert into lect_appy(lano, lno, sno, rdt) values(16, 8, 3, '2016-12-04');
insert into lect_appy(lano, lno, sno, rdt) values(17, 8, 4, '2016-12-04');
insert into lect_appy(lano, lno, sno, rdt) values(18, 8, 5, '2016-12-12');
insert into lect_appy(lano, lno, sno, rdt) values(19, 8, 6, '2016-12-12');
insert into lect_appy(lano, lno, sno, rdt) values(20, 8, 7, '2016-12-12');
insert into lect_appy(lano, lno, sno, rdt) values(21, 8, 8, '2016-12-30');
insert into lect_appy(lano, lno, sno, rdt) values(22, 8, 9, '2016-12-30');
insert into lect_appy(lano, lno, sno, rdt) values(23, 8, 10, '2017-01-05');











