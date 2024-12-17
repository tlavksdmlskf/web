DROP TABLE TBL_PATIENT_202004;
create table TBL_PATIENT_202004(
	P_NO char(4) primary key,
	P_NAME varchar2(20),
	P_BIRTH CHAR(8),
	P_GENDER CHAR(1),
	P_TEL1 CHAR(3),
	P_TEL2 CHAR(4),
	P_TEL3 CHAR(4),
	P_CITY CHAR(2)
);
INSERT INTO TBL_PATIENT_202004 VALUES('1001', '김환자', '19850301', 'M', '010', '2222', '0001', '10');
INSERT INTO TBL_PATIENT_202004 VALUES('1002', '이환자', '19900301', 'M', '010', '2222', '0002', '20');
INSERT INTO TBL_PATIENT_202004 VALUES('1003', '박환자', '19770301', 'F', '010', '2222', '0003', '30');
INSERT INTO TBL_PATIENT_202004 VALUES('1004', '조환자', '19650301', 'F', '010', '2222', '0004', '10');
INSERT INTO TBL_PATIENT_202004 VALUES('1005', '황환자', '19400301', 'M', '010', '2222', '0005', '40');
INSERT INTO TBL_PATIENT_202004 VALUES('1006', '양환자', '19440301', 'F', '010', '2222', '0006', '40');
INSERT INTO TBL_PATIENT_202004 VALUES('1007', '허환자', '19760301', 'F', '010', '2222', '0007', '10');

CREATE TABLE TBL_LAB_TEST_202004(
	T_CODE CHAR(4) PRIMARY KEY,
	T_NAME VARCHAR2(20)
);
INSERT INTO TBL_LAB_TEST_202004 VALUES('T001', '결핵');
INSERT INTO TBL_LAB_TEST_202004 VALUES('T002', '장티푸스');
INSERT INTO TBL_LAB_TEST_202004 VALUES('T003', '수두');
INSERT INTO TBL_LAB_TEST_202004 VALUES('T004', '홍역');
INSERT INTO TBL_LAB_TEST_202004 VALUES('T005', '콜레라');

CREATE TABLE TBL_RESULT_202004(
	P_NO CHAR(4) NOT NULL,
	T_CODE CHAR(4),
	T_SDATE DATE,
	T_STATUS CHAR(1),
	T_LDATE DATE,
	T_RESULT CHAR(1),
	PRIMARY KEY(P_NO, T_CODE)
);
INSERT INTO TBL_RESULT_202004 VALUES('1001', 'T001', '2020-01-01', '1', '2020-01-02', 'X');
INSERT INTO TBL_RESULT_202004 VALUES('1002', 'T002', '2020-01-01', '2', '2020-01-02', 'P');
INSERT INTO TBL_RESULT_202004 VALUES('1003', 'T003', '2020-01-01', '2', '2020-01-02', 'N');
INSERT INTO TBL_RESULT_202004 VALUES('1004', 'T004', '2020-01-01', '2', '2020-01-02', 'P');
INSERT INTO TBL_RESULT_202004 VALUES('1005', 'T005', '2020-01-01', '2', '2020-01-02', 'P');
INSERT INTO TBL_RESULT_202004 VALUES('1006', 'T001', '2020-01-01', '2', '2020-01-02', 'N');
INSERT INTO TBL_RESULT_202004 VALUES('1007', 'T002', '2020-01-01', '2', '2020-01-02', 'P');
INSERT INTO TBL_RESULT_202004 VALUES('1005', 'T003', '2020-01-01', '2', '2020-01-02', 'P');
INSERT INTO TBL_RESULT_202004 VALUES('1006', 'T004', '2020-01-01', '2', '2020-01-02', 'N');
INSERT INTO TBL_RESULT_202004 VALUES('1007', 'T005', '2020-01-01', '2', '2020-01-02', 'N');

select p_no as 환자번호, p_name as 환자성명, 
substr(p_birth, 1, 4)||'년'||substr(p_birth, 5, 2)||'월'||substr(p_birth, 7, 2)||'일' as 생년월일,
case p_gender when 'M' then '남' else '여' end as 성별,
p_tel1||'-'||p_tel2||'-'||p_tel3 as 전화번호,
case p_city when '10' then '서울' when '20' then '경기' when '30' then '강원' else '대구' end as 지역
from TBL_PATIENT_202004;

select p_no as 환자번호, p_name as 환자성명, substr(p_birth, 1, 4)||'년'||substr(p_birth, 5, 2)||'월'||substr(p_birth, 7, 2)||'일' as 생년월일, case p_gender when 'M' then '남' else '여' end as 성별, p_tel1||'-'||p_tel2||'-'||p_tel3 as 전화번호, case p_city when '10' then '서울' when '20' then '경기' when '30' then '강원' else '대구' end as 지역 from TBL_PATIENT_202004; 
select * from TBL_RESULT_202004;
ALTER USER system IDENTIFIED BY 1234;

select P.P_CITY, case P.P_CITY when '10' then '서울' when '20' then '경기' when '30' then '강원' when '40' then '대구' end as p_name, count(P.P_CITY) from tbl_patient_202004 P, tbl_result_202004 r where P.P_NO = r.P_NO group by P.P_CITY order by P.P_CITY;
select * from tbl_patient_202004 P, tbl_result_202004 r where P.P_NO = r.P_NO
select p.P_NO, p.P_NAME, l.T_NAME, to_char(r.T_SDATE,'yyyy-mm-dd') as t_sdate, case r.T_STATUS when '1' then '검사중' when '2' then '검사완료' end as T_STATUS, to_char(r.T_LDATE,'yyyy-mm-dd') t_ldate, case r.T_RESULT when 'X' then '미입력' when 'P' then '양성' when 'N' then '음성' end as result from tbl_patient_202004 p, tbl_result_202004 r, tbl_lab_test_202004 l where p.P_NO = r.P_NO and r.T_CODE = l.T_CODE order by p.p_no
select p_no from tbl_result_202004;