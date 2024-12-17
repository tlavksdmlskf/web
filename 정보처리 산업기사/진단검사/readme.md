# 진단검사 페이지
<ul> 
 <li>환자의 정보 조회, 검사 결과 입력, 검사 결과 조회, 지역별 검사 건수 조회를 할 수 있는 웹사이트</li>
</ul>
<H3>메인 페이지</H3>
<img src="https://github.com/user-attachments/assets/cf86431a-dcfa-4175-a75a-616e9b8e77a4" alt="메인 페이지 이미지">
<details><summary><H2>완성본 사진</H2></summary>
<H3>환자조회 페이지</H3>
<img src="https://github.com/user-attachments/assets/d076f429-1422-4e41-9f29-446af02fdc89" alt="회원등록 페이지 이미지">
<H3>검사결과입력 페이지</H3>
<img src="https://github.com/user-attachments/assets/eb2fe0ee-be56-4e9b-83e0-a50c51d39a0f" alt="유효성 검사 이미지">
<H3>유호성 검사</H3>
<img src="https://github.com/user-attachments/assets/039aeb84-5566-473d-ab63-6dbf93053613" alt="유효성 검사 이미지">
<H3>검사결과조회 페이지</H3>
<img src="https://github.com/user-attachments/assets/c8bfbaef-e4c8-4440-a388-b122a776eb6b" alt="유효성 검사 이미지">
<H3>지역별 검사건수통계 페이지</H3>
<img src="https://github.com/user-attachments/assets/61800f57-1a0d-44c1-b12a-395f3bc4a51a" alt="회원 매출 조회 이미지">
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
<img src="https://github.com/user-attachments/assets/6044200d-8193-44ea-8893-ec5e5c46461d" alt="유효성 검사 이미지">
<img src="https://github.com/user-attachments/assets/b6076fe1-6861-4567-99cb-2db7b974173c" alt="유효성 검사 이미지">
<ul>
 <li>join.jsp에서 입력받은 값을 DB에 전달하는 코드</li> 
 <li>한글로 전송하기 위해 인코딩을 UTF-8로 바꿔준다.</li>
 <li>그 후 member_list.jsp로 이동시켜 준다.</li>
</ul> 
</details>
<hr>
<details><summary><H2>검사결과입력.jsp (검사결과입력 페이지)</H2></summary>
<img src="https://github.com/user-attachments/assets/ff747af1-38ed-4794-8d8f-90285dae998a" alt="유효성 검사 이미지">
<ul>
 <li>join.jsp에서 입력받은 값을 DB에 전달하는 코드</li> 
 <li>한글로 전송하기 위해 인코딩을 UTF-8로 바꿔준다.</li>
 <li>그 후 member_list.jsp로 이동시켜 준다.</li>
</ul> 
</details>


<details><summary><H2>검사결과입력_p.jsp (검사결과입력 페이지)</H2></summary>
<img src="https://github.com/user-attachments/assets/248a0a4b-77a7-42ad-aa56-29494557dba3" alt="유효성 검사 이미지">
<img src="https://github.com/user-attachments/assets/9c9cf1bb-740f-46bc-829a-4f6279fe33b8" alt="유효성 검사 이미지">
<ul>
 <li>회원의 정보를 가져오는 코드</li> 
 <li>Case문을 활용하여 회원의 등급을 표시하였다</li>
</ul>

</details>
<hr>
<details><summary><H2>검사결과조회.jsp (검사결과조회 페이지)</summary>
<img src="https://github.com/user-attachments/assets/c90debc6-e5bb-4269-8fc4-bae03103152f" alt="유효성 검사 이미지">

<ul>
 <li> 매출이 있는 회원 각각의 매출을 보여주는 코드</li> 
 <li>Case문을 활용하여 회원의 등급을 표시하였다</li>
 <li>member_tbl_02 테이블과 money_tbl_02 테이블을 조인하여 매출을 가져왔다</li> 
 <li>총액을 구하기 위해서 변수를 선언했다</li>
 <li>click_custno를 통하여 클릭한 회원번호를 update.jsp에 전송해준다</li>
</ul>
<hr>
<img src="https://github.com/user-attachments/assets/a2c4e09f-62c9-4766-a7b4-4ac06863537c" alt="유효성 검사 이미지">
  <ul>
 <li>회원의 정보와 매출, 총액을 출력해주는 코드</li> 
 <li>아까 선언해준 변수에 매출을 더해주는 방식으로 총액을 구해준다</li>
</ul>
</details>
<hr>
<details><summary><H2>지역별검사건수.jsp (지역별 검사건수 페이지)</H2></summary>
<img src="https://github.com/user-attachments/assets/248a0a4b-77a7-42ad-aa56-29494557dba3" alt="유효성 검사 이미지">
<img src="https://github.com/user-attachments/assets/9c9cf1bb-740f-46bc-829a-4f6279fe33b8" alt="유효성 검사 이미지">
<ul>
 <li>회원의 정보를 가져오는 코드</li> 
 <li>Case문을 활용하여 회원의 등급을 표시하였다</li>
</ul>

</details>





