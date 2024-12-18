# 진단검사 페이지
<ul> 
 <li>환자의 정보 조회, 검사 결과 입력, 검사 결과 조회, 지역별 검사 건수 조회를 할 수 있는 웹사이트</li>
</ul>
<H3>메인 페이지</H3>
<img src="https://github.com/user-attachments/assets/54f96296-02a7-403f-b87b-de0319eb7e05" alt="메인 페이지 이미지">
<details><summary><H2>완성본 사진</H2></summary>
<H3>환자조회 페이지</H3>
<img src="https://github.com/user-attachments/assets/ef823c6b-6916-42f6-99c7-37a0c38e5845" alt="회원등록 페이지 이미지">
<H3>검사결과입력 페이지</H3>
<img src="https://github.com/user-attachments/assets/50ecaac4-cd6f-4c56-9e84-ac39c6e72044" alt="유효성 검사 이미지">
<H3>유호성 검사</H3>
<img src="https://github.com/user-attachments/assets/137a76c8-0956-416b-9350-01c63833ab2c" alt="유효성 검사 이미지">
<H3>다시쓰기를 눌렀을 경우</H3>
<img src="https://github.com/user-attachments/assets/df01d13a-eb1b-46c8-aec2-94b556fdbcb1" alt="유효성 검사 이미지">
<H3>검사결과조회 페이지</H3>
<img src="https://github.com/user-attachments/assets/75c15e10-607b-4b40-9a04-ac1412ef35d5" alt="유효성 검사 이미지">
<H3>지역별 검사건수통계 페이지</H3>
<img src="https://github.com/user-attachments/assets/538c9d5e-c44b-4ddd-ace8-c9420d28d16b" alt="회원 매출 조회 이미지">
</details>

<hr>

# 주요코드
<details><summary><H2>index.jsp (메인 페이지)</H2></summary>
<img src="https://github.com/user-attachments/assets/ad69a05a-16bd-46cd-badb-ca77bb9f9543" alt="유효성 검사 이미지">
 <ul>
    <li> 전체적인 사이트 틀</li>
    <li> 사이트에서 중복인 부분은 jsp:include 로 넣어준다.</li>
 </ul>
</details>
<details><summary><H2>DBConnect.java (DB 연결)</H2></summary>
<img src="https://github.com/user-attachments/assets/32c26442-9e5b-4535-bfb4-4c720278ddf2" alt="유효성 검사 이미지">
<ul>
 <li>DB을 연결시켜주기 위해 필요한 코드</li>
</ul>

</details>
<hr>
<details><summary><H2>환자조회.jsp (환자조회 페이지)</H2></summary>

<img src="https://github.com/user-attachments/assets/93328fcd-48d0-4737-bbff-f6e1dc1fe489" alt="유효성 검사 이미지">
<ul>
 <li>환자번호, 환자성명, 생년월일, 성별, 전화번호, 지역을 보여주는 코드</li> 
 <li>substr, 연결 연산자를 사용하여 생년월일과 전화번호를 보여주고 case문 사용하여 지역을 보여준다. </li>
</ul> 
<img src="https://github.com/user-attachments/assets/2fe134ce-3cf6-44f5-9ee2-bdc7cda232a6" alt="유효성 검사 이미지">
<ul>
 <li>모든 환자를 출력할 때 까지 반복함.</li>
</ul>
</details>
<hr>
<details><summary><H2>검사결과입력.jsp (검사결과입력 페이지)</H2></summary>
<img src="https://github.com/user-attachments/assets/1fe20730-55fe-4d0e-b943-7b77a51fee29" alt="유효성 검사 이미지">
<ul>
 <li>환자번호, 검사코드, 검사시작일, 검사상태, 검사완료일, 검사결과를 입력받는 코드</li>
 <li>select와 option으로 드롭다운을 구현하였다.</li> 
</ul> 
<img src="https://github.com/user-attachments/assets/c1188deb-2b03-4aca-bae3-43885fa29c34" alt="유효성 검사 이미지">
<ul>
 <li>값이 없는 지 확인하는 유효성 검사 코드</li>
 <li>입력창에 값이 없을 경우, 알림 후 값이 비어있는 입력창으로 이동한다</li> 
</ul> 
<img src="https://github.com/user-attachments/assets/8fffd813-f0fc-4ac3-871e-78e321e5d324" alt="유효성 검사 이미지">
<ul>
 <li>다시쓰기를 누를 경우, 알림 후 입력값을 초기화 시켜주는 코드</li>
 <li>초기화 후, 환자번호에서부터 입력할 수 있도록 이동시켜 준다.</li> 
</ul> 
</details>

<details><summary><H2>검사결과입력_p.jsp (검사결과입력 페이지)</H2></summary>
<img src="https://github.com/user-attachments/assets/1cb4824b-ff62-457b-b7a1-2b1a2c4066f9" alt="유효성 검사 이미지">
<ul>
 <li>입력받은 값들을 데이터베이스에 저장하는 코드</li> 
 <li>한글이 깨지지 않도록 인코딩을 utf-8로 변경하였다.<br> 그 후, 초기 화면으로 돌아간다</li>
</ul>

</details>
<hr>
<details><summary><H2>검사결과조회.jsp (검사결과조회 페이지)</summary>
<img src="https://github.com/user-attachments/assets/dd01183e-6c96-45b9-8073-89e0a3b7de71" alt="유효성 검사 이미지">
<img src="https://github.com/user-attachments/assets/d46be0bd-3450-4d93-b824-810cb9671796" alt="유효성 검사 이미지">
<ul>
 <li>환자번호, 환자명, 검사일, 검사시작일, 검사상태, 검사종료일, 검사결과를 보여주는 코드</li> 
 <li>to_char로 날짜 사이에 'yyyy-mm-dd'로 나오게 만들었다.</li>
 <li>case문을 활용하여 검사일과 검사결과를 각각에 맞는 조건에 따라 다르게 나오도록 만들었다.</li> 
</ul>
<hr>
</details>
<hr>
<details><summary><H2>지역별검사건수.jsp (지역별 검사건수 페이지)</H2></summary>
<img src="https://github.com/user-attachments/assets/ab83770e-25f5-414b-8eb1-703ccb3afe74" alt="유효성 검사 이미지">
<img src="https://github.com/user-attachments/assets/644ea28a-7003-4582-a140-3d2413376a1f" alt="유효성 검사 이미지">

<ul>
 <li>지역별 검사건수를 보여주는 코드</li> 
 <li>group by로 도시를 묶은 다음 count로 건수를 세 지역코드 순으로 보여준다.</li>
</ul>

</details>





