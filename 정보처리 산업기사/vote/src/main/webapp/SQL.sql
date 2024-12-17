INSERT INTO TBL_VOTE_202005 VALUES('990101100011', '김유권', '1', '0930', '제1투표장', 'N');
INSERT INTO TBL_VOTE_202005 VALUES('890101200021', '이유권', '2', '0930', '제1투표장', 'N');
INSERT INTO TBL_VOTE_202005 VALUES('690101100031', '박유권', '3', '0930', '제1투표장', 'Y');
INSERT INTO TBL_VOTE_202005 VALUES('590101200041', '홍유권', '4', '0930', '제1투표장', 'Y');
INSERT INTO TBL_VOTE_202005 VALUES('790101100051', '조유권', '5', '0930', '제1투표장', 'Y');
INSERT INTO TBL_VOTE_202005 VALUES('890101200061', '최유권', '1', '0930', '제1투표장', 'Y');
INSERT INTO TBL_VOTE_202005 VALUES('590101100071', '지유권', '1', '0930', '제1투표장', 'Y');
INSERT INTO TBL_VOTE_202005 VALUES('490101200081', '장유권', '3', '0930', '제1투표장', 'Y');
INSERT INTO TBL_VOTE_202005 VALUES('790101100091', '정유권', '3', '0930', '제1투표장', 'Y');
INSERT INTO TBL_VOTE_202005 VALUES('890101200101', '강유권', '4', '0930', '제1투표장', 'Y');
INSERT INTO TBL_VOTE_202005 VALUES('990101100111', '신유권', '5', '0930', '제1투표장', 'Y');
INSERT INTO TBL_VOTE_202005 VALUES('790101200121', '오유권', '1', '1330', '제1투표장', 'Y');
INSERT INTO TBL_VOTE_202005 VALUES('690101100131', '현유권', '4', '1330', '제2투표장', 'Y');
INSERT INTO TBL_VOTE_202005 VALUES('890101100141', '왕유권', '2', '1330', '제2투표장', 'Y');
INSERT INTO TBL_VOTE_202005 VALUES('990101100151', '유유권', '3', '1330', '제2투표장', 'Y');
INSERT INTO TBL_VOTE_202005 VALUES('790101100161', '한유권', '2', '1330', '제2투표장', 'Y');
INSERT INTO TBL_VOTE_202005 VALUES('890101100171', '문유권', '4', '1330', '제2투표장', 'Y');
INSERT INTO TBL_VOTE_202005 VALUES('990101100181', '양유권', '2', '1330', '제2투표장', 'Y');
INSERT INTO TBL_VOTE_202005 VALUES('990101100191', '구유권', '4', '1330', '제2투표장', 'Y');
INSERT INTO TBL_VOTE_202005 VALUES('790101100201', '황유권', '5', '1330', '제2투표장', 'Y');
INSERT INTO TBL_VOTE_202005 VALUES('690101100211', '배유권', '3', '1330', '제2투표장', 'Y');
INSERT INTO TBL_VOTE_202005 VALUES('790101100221', '전유권', '3', '1330', '제2투표장', 'Y');

select * from TBL_vote_202005;
delete from TBL_VOTE_202005;

INSERT INTO TBL_MEMBER_202005 values('1', '김후보', 'P1', '1', '6603011999991', '수선화동');
INSERT INTO TBL_MEMBER_202005 values('2', '이후보', 'P2', '3', '5503011999992', '민들래동');
INSERT INTO TBL_MEMBER_202005 values('3', '박후보', 'P3', '2', '7703011999993', '나팔꽃동');
INSERT INTO TBL_MEMBER_202005 values('4', '조후보', 'P4', '2', '8803011999994', '진달래동');
INSERT INTO TBL_MEMBER_202005 values('5', '최후보', 'P5', '3', '9903011999995', '개나리동');

INSERT INTO TBL_PARTY_202005 values('P1', 'A정당', '2010-01-01', '위대표', '02', '1111', '0001');
INSERT INTO TBL_PARTY_202005 values('P2', 'B정당', '2010-02-01', '명대표', '02', '1111', '0002');
INSERT INTO TBL_PARTY_202005 values('P3', 'C정당', '2010-03-01', '기대표', '02', '1111', '0003');
INSERT INTO TBL_PARTY_202005 values('P4', 'D정당', '2010-04-01', '옥대표', '02', '1111', '0004');
INSERT INTO TBL_PARTY_202005 values('P5', 'E정당', '2010-05-01', '임대표', '02', '1111', '0005');
select MB.m_no, MB.m_name, count(TV.m_no) as cnno from tbl_member_202005 MB, tbl_vote_202005 TV where MB.m_no = TV.m_no and TV.v_confirm != 'N' group by MB.m_no, MB.m_name order by cnno desc, MB.m_no asc
select M_NO, M_NAME, P_NAME, case P_SCHOOL when '1' then '고졸' when '2' then '학사' when '3' then '석사' when '4' then '박사' end as school,
substr(M_JUMIN, 1, 6)||'-'||substr(M_JUMIN, 7, 7) as M_JUMIN, M_CITY, P_TEL1||'-'||P_TEL2||'-'||P_TEL3 as P_TEL
from TBL_MEMBER_202005 M, TBL_PARTY_202005 P
where M.P_CODE = P.P_CODE;

SELECT TRUNC(MONTHS_BETWEEN(TRUNC(SYSDATE), TO_DATE(case when substr(v_jumin,7,1) in ('1', '2') then '19'||substr(v_JUMIN, 1, 6) when substr(v_jumin,7,1) in ('3','4') then '20'||substr(v_JUMIN, 1, 6) end ,'YYYYMMDD')) / 12) from tbl_vote_202005;
SELECT V_NAME, case when substr(v_jumin,7,1) in ('1', '2') then '19'||substr(v_JUMIN, 1, 2)||'년'||substr(v_jumin,3,2)||'월'||substr(v_jumin,5,2)||'일생' when substr(v_jumin,7,1) in ('3','4') then '20'||substr(v_JUMIN, 1, 2)||'년'||substr(v_jumin,3,2)||'월'||substr(v_jumin,5,2)||'일생' end as birth_date, '만'||to_char(TRUNC(MONTHS_BETWEEN(TRUNC(SYSDATE), TO_DATE(case when substr(v_jumin,7,1) in ('1', '2') then '19'||substr(v_JUMIN, 1, 6) when substr(v_jumin,7,1) in ('3','4') then '20'||substr(v_JUMIN, 1, 6) end ,'YYYYMMDD')) / 12))||'세' as full_age,  from tbl_vote_202005;
SELECT V_NAME, CASE WHEN substr(v_jumin, 7, 1) IN ('1', '2') THEN '19' || substr(v_jumin, 1, 2) || '년' || substr(v_jumin, 3, 2) || '월' || substr(v_jumin, 5, 2) || '일생' WHEN substr(v_jumin, 7, 1) IN ('3', '4') THEN '20' || substr(v_jumin, 1, 2) || '년' || substr(v_jumin, 3, 2) || '월' || substr(v_jumin, 5, 2) || '일생' END AS birth_date, '만' || TO_CHAR(TRUNC(MONTHS_BETWEEN(TRUNC(SYSDATE), TO_DATE(CASE WHEN substr(v_jumin, 7, 1) IN ('1', '2') THEN '19' || substr(v_jumin, 1, 6) WHEN substr(v_jumin, 7, 1) IN ('3', '4') THEN '20' || substr(v_jumin, 1, 6) END, 'YYYYMMDD')) / 12)) || '세' AS full_age, case when substr(v_jumin,7,1) in (1, 3) then '남' when substr(v_jumin, 7, 1) in (2, 4) then '여' end as gender, m_no, substr(v_time,1,2)||':'||substr(v_time,3,2) as v_time, case v_confirm when 'Y' then '확인' when 'N' then '미확인' end as v_confirm FROM tbl_vote_202005;
select v.m_no as nom, m.m_name, count(v.m_no) vote_no from tbl_vote_202005 v, tbl_member_202005 m where v.m_no = m.m_no and v_confirm = 'Y' group by v.m_no, m.m_name order by vote_no desc, nom
select m_no, count(m_no) from tbl_vote_202005 group by m_no order by m_no;
SELECT V_NAME, CASE WHEN substr(v_jumin, 7, 1) IN ('1', '2') THEN '19' || substr(v_jumin, 1, 2) || '년' || substr(v_jumin, 3, 2) || '월' || substr(v_jumin, 5, 2) || '일생' WHEN substr(v_jumin, 7, 1) IN ('3', '4') THEN '20' || substr(v_jumin, 1, 2) || '년' || substr(v_jumin, 3, 2) || '월' || substr(v_jumin, 5, 2) || '일생' END AS birth_date, '만' || TO_CHAR(TRUNC(MONTHS_BETWEEN(TRUNC(SYSDATE), TO_DATE(CASE WHEN substr(v_jumin, 7, 1) IN ('1', '2') THEN '19' || substr(v_jumin, 1, 6) WHEN substr(v_jumin, 7, 1) IN ('3', '4') THEN '20' || substr(v_jumin, 1, 6) END, 'YYYYMMDD')) / 12)) || '세' AS full_age, case when substr(v_jumin,7,1) in (1, 3) then '남' when substr(v_jumin, 7, 1) in (2, 4) then '여' end as gender, m_no, substr(v_time,1,2)||':'||substr(v_time,3,2) as v_time, case v_confirm when 'Y' then '확인' when 'N' then '미확인' end as v_confirm FROM tbl_vote_202005 where v_area = '제1투표장' order by m_no, v_time desc;

select m.m_no, m.m_name, count(v.m_no) as cnno from tbl_member_202005 m, tbl_vote_202005 v where m.m_no = v.m_no and v.v_confirm != 'N' group by m.m_no, m.m_name order by cnno desc, m.m_no asc 
