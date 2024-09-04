# 쇼핑몰 회원관리 페이지



<H2>완성본</H2>
<H3>메인 페이지</H3>
<img src="https://github.com/user-attachments/assets/5b2c830c-40aa-457c-b741-773e150033cf" alt="메인 페이지 이미지">
<H3>회원등록 페이지</H3>
<img src="https://github.com/user-attachments/assets/7714577e-34e9-49c0-8eab-df8e07a6001b" alt="회원등록 페이지 이미지">
<H3>유효성 검사</H3>
<img src="https://github.com/user-attachments/assets/e4d833c7-8a7c-438d-a441-ee8585109341" alt="유효성 검사 이미지">
<H3>DB에 들어간 모습</H3>
<img src="https://github.com/user-attachments/assets/253f39e7-bc82-473d-94db-04e93fa2920c" alt="유효성 검사 이미지">
<H3>회원 매출 조회</H3>
<img src="https://github.com/user-attachments/assets/7c811864-d3d2-4fe8-a4ed-c6ca9cc637fb" alt="유효성 검사 이미지">
<H3>회원 정보 조회(회원번호가 일치할 경우)</H3>
<img src="https://github.com/user-attachments/assets/25396fa1-772a-41c1-b59f-700965d6fea7" alt="유효성 검사 이미지">
<img src="https://github.com/user-attachments/assets/1f2a7ea0-2239-4f31-acbd-68e4b3cd4edd" alt="유효성 검사 이미지">
<H3>(회원번호가 일치하지 않을 경우)</H3>
<img src="https://github.com/user-attachments/assets/ad65994a-d82d-4bd2-a8c9-94c94f1d2b51" alt="유효성 검사 이미지">
<img src="https://github.com/user-attachments/assets/c4ec843b-becb-49ae-903c-dff7aa9fc1cf" alt="유효성 검사 이미지">


<hr>

# 주요코드
<details><summary><H2>index.jsp</H2></summary>
<img src="https://github.com/user-attachments/assets/ad69a05a-16bd-46cd-badb-ca77bb9f9543" alt="유효성 검사 이미지">
 <ul>
    <li> 전체적인 사이트 틀</li>
    <li> 사이트에서 중복인 부분은 jsp:include 로 넣어준다.</li>
 </ul>
</details>


<hr>


<details><summary><H2>join.jsp</H2></summary>
<img src="https://github.com/user-attachments/assets/598db99c-1802-48b6-9896-6dcb1e96431f" alt="유효성 검사 이미지">
<img src="https://github.com/user-attachments/assets/66fe5e44-fb6a-4657-bb46-a7c1dc88e602" alt="유효성 검사 이미지">
<ul>
    <li>함수를 만들어서 입력창에 입력값이 없으면 입력되지 않은 창으로 이동시켜 준다.</li>
    <li>입력이 전부 되었으면 폼을 join_p.jsp로 전송한다.</li>
</ul>

<img src="https://github.com/user-attachments/assets/4f856b72-8e7b-47b9-8253-50abcd6e11cd" alt="유효성 검사 이미지">
<img src="https://github.com/user-attachments/assets/2e38ee38-e26f-473d-bf0a-2e50eebbc98e" alt="유효성 검사 이미지">

<ul>
 <li>회원가입을 하려는 사람의 회원번호를 정해주는 코드</li> 
 <li>DB에서 현재 존재하는 회원번호 + 1을 변수에 저장한 뒤, 회원번호 창에 출력한다.</li>
 <li>회원번호 창은 readonly로 읽을 수만 있게 만들어준다.</li>
</ul>
</details>
<hr>
<details><summary><H2>join_p.jsp</H2></summary>
<img src="https://github.com/user-attachments/assets/f7464ebb-d363-4492-8dcd-8b9d7e15402f" alt="유효성 검사 이미지">
<ul>
 <li>join.jsp에서 입력받은 값을 DB에 전달하는 코드</li> 
 <li>한글로 전송하기 위해 인코딩을 UTF-8로 바꿔준다.</li>
 <li>그 후 member_list.jsp로 이동시켜 준다.</li>
</ul> 
</details>
<hr>
<details><summary><H2>DBConnect.java</H2></summary>
<img src="https://github.com/user-attachments/assets/32c26442-9e5b-4535-bfb4-4c720278ddf2" alt="유효성 검사 이미지">
+ SQL을 연결시켜주는 코드
</details>
<hr>
<details><summary><H2>member_list.jsp</H2></summary>
<img src="https://github.com/user-attachments/assets/5bfa249f-ac4c-40e9-b411-11a2313059a9" alt="유효성 검사 이미지">
<ul>
 <li>회원의 정보를 가져오는 코드</li> 
 <li>Case문을 활용하여 회원의 등급을 표시하였다</li>
</ul>

<img src="https://github.com/user-attachments/assets/8e609925-44e5-483d-9313-2c6ecfb2eff1" alt="유효성 검사 이미지">
<ul>
 <li>회원의 정보를 출력하는 코드</li> 
 <li>while문, rs.next()를 사용하여 rs에 들어있는 값이 없을 때 까지 출력하게 한다</li>
</ul>
</details>
<hr>
<details><summary><H2>sales_list.jsp</summary>
<img src="https://github.com/user-attachments/assets/af76f90c-3345-4605-be88-679077b509e4" alt="유효성 검사 이미지">

<ul>
 <li> 매출이 있는 회원 각각의 매출을 보여주는 코드</li> 
 <li>Case문을 활용하여 회원의 등급을 표시하였다</li>
 <li>member_tbl_02 테이블과 money_tbl_02 테이블을 조인하여 매출을 가져왔다</li> 
 <li>총액을 구하기 위해서 변수를 선언했다</li>
</ul>

<img src="https://github.com/user-attachments/assets/85ae6c50-8d8e-4655-b76b-86aa47a57718" alt="유효성 검사 이미지">
  <ul>
 <li>회원의 정보와 매출, 총액을 출력해주는 코드</li> 
 <li>아까 선언해준 변수에 매출을 더해주는 방식으로 총액을 구해준다</li>
</ul>

<hr>
<details><summary><H2>member_search.jsp</summary>
<img src="https://github.com/user-attachments/assets/403a4d2f-976e-4bdb-88c9-60f91e4d0bd9" alt="유효성 검사 이미지">
<ul>
<li>회원번호 입력 창에 값이 존재하지 않을 시 입력 창으로 이동시켜 주는 함수</li>
</ul>

<img src="https://github.com/user-attachments/assets/92494179-a6f0-4e0b-a90c-d4676b8abd93" alt="유효성 검사 이미지">
<ul>
 <li>입력받은 값을 member_search_list.jsp로 전송한다</li>
</ul>

<hr>
<details><summary><H2>member_search_list.jsp</summary>
<img src="https://github.com/user-attachments/assets/3fd53140-2713-482b-a622-1a9ba48908f6" alt="유효성 검사 이미지">

 <ul>
  <li>사용자가 조회하려는 회원 정보를 조회한다</li>
 </ul>

<img src="https://github.com/user-attachments/assets/75761a88-3143-4db9-99f7-397d0c60eea7" alt="유효성 검사 이미지">
<ul>
 <li>if문, rs.next()를 사용하여 rs.next의 값이 True일 경우 (조회한 정보가 존재할 경우) 조회한 값 출력</li> 
 <li>False일 경우 (조회한 정보가 존재하지 않을 경우) 해당 회원이 존재하지 않다고 출력</li>
</ul>








