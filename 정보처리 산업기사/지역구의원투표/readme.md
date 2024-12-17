# 지역구의원투표 페이지
<ul> 
 <li>유권자들의 정보를 추가 및 투표 검수 조회, 후보자 등수 등을 볼 수 있는 웹사이트</li>
</ul>
<H3>메인 페이지</H3>
<img src="https://github.com/user-attachments/assets/cf86431a-dcfa-4175-a75a-616e9b8e77a4" alt="메인 페이지 이미지">
<details><summary><H2>완성본 사진</H2></summary>
<H3>후보조회 페이지</H3>
<img src="https://github.com/user-attachments/assets/d076f429-1422-4e41-9f29-446af02fdc89" alt="회원등록 페이지 이미지">
<H3>투표 페이지</H3>
<img src="https://github.com/user-attachments/assets/eb2fe0ee-be56-4e9b-83e0-a50c51d39a0f" alt="유효성 검사 이미지">
<H3>유호성 검사</H3>
<img src="https://github.com/user-attachments/assets/039aeb84-5566-473d-ab63-6dbf93053613" alt="유효성 검사 이미지">
<H3>후보 검수 조회 페이지</H3>
<img src="https://github.com/user-attachments/assets/c8bfbaef-e4c8-4440-a388-b122a776eb6b" alt="유효성 검사 이미지">
<H3>후보자 등수 페이지</H3>
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
<hr>
![image](https://github.com/user-attachments/assets/c1138838-c9d5-4d4e-bf8c-057c2cfa9cba)

<details><summary><H2>vote_member.jsp (후보조회 페이지)</H2></summary>
<img src="https://github.com/user-attachments/assets/c1138838-c9d5-4d4e-bf8c-057c2cfa9cba" alt="유효성 검사 이미지">
<img src="https://github.com/user-attachments/assets/812966ed-881e-4649-9a91-b0440244eae2" alt="유효성 검사 이미지">
<ul>
    <li>후보자의 번호, 이름, 학력, 주민번호, 지역구, 대표전화를 보여주는 페이지.</li>
    <li>학력은 case문으로 각각의 맞는 학력을 보여주고, 주민번호, 대표전화는 sub_str과 연결 연산자를 사용하여 문자를 자르고 연결하여 모든 후보가 나오도록 반복했다.</li>
</ul>
<img src="https://github.com/user-attachments/assets/4f856b72-8e7b-47b9-8253-50abcd6e11cd" alt="유효성 검사 이미지">
<img src="https://github.com/user-attachments/assets/2e38ee38-e26f-473d-bf0a-2e50eebbc98e" alt="유효성 검사 이미지">
<ul>
 <li>회원가입을 하려는 사람의 회원번호를 정해주는 코드</li> 
 <li>DB에서 현재 존재하는 회원번호 + 1을 변수에 저장한 뒤, 회원번호 창에 출력한다.</li>
 <li>회원번호 창은 readonly로 읽을 수만 있게 만들어준다.</li>
</ul>
</details>
<details><summary><H2>DBConnect.java (DB 연결)</H2></summary>
<img src="https://github.com/user-attachments/assets/32c26442-9e5b-4535-bfb4-4c720278ddf2" alt="유효성 검사 이미지">
<ul>
 <li>DB을 연결시켜주기 위해 필요한 코드</li>
</ul>
</details>

<hr>
<details><summary><H2>join_p.jsp (회원등록 페이지)</H2></summary>
<img src="https://github.com/user-attachments/assets/f7464ebb-d363-4492-8dcd-8b9d7e15402f" alt="유효성 검사 이미지">
<ul>
 <li>join.jsp에서 입력받은 값을 DB에 전달하는 코드</li> 
 <li>한글로 전송하기 위해 인코딩을 UTF-8로 바꿔준다.</li>
 <li>그 후 member_list.jsp로 이동시켜 준다.</li>
</ul> 
</details>
<hr>

<details><summary><H2>member_list.jsp (회원 정보 페이지)</H2></summary>

<img src="https://github.com/user-attachments/assets/6b3bd7ab-d66e-4d7c-8fef-72ca4964a5a0" alt="유효성 검사 이미지">
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
<details><summary><H2>sales_list.jsp (회원 매출 조회 페이지)</summary>
<img src="https://github.com/user-attachments/assets/af76f90c-3345-4605-be88-679077b509e4" alt="유효성 검사 이미지">

<ul>
 <li> 매출이 있는 회원 각각의 매출을 보여주는 코드</li> 
 <li>Case문을 활용하여 회원의 등급을 표시하였다</li>
 <li>member_tbl_02 테이블과 money_tbl_02 테이블을 조인하여 매출을 가져왔다</li> 
 <li>총액을 구하기 위해서 변수를 선언했다</li>
 <li>click_custno를 통하여 클릭한 회원번호를 update.jsp에 전송해준다</li>
</ul>

<img src="https://github.com/user-attachments/assets/85ae6c50-8d8e-4655-b76b-86aa47a57718" alt="유효성 검사 이미지">
  <ul>
 <li>회원의 정보와 매출, 총액을 출력해주는 코드</li> 
 <li>아까 선언해준 변수에 매출을 더해주는 방식으로 총액을 구해준다</li>
</ul>
</details>
<hr>
<details><summary><H2>member_search.jsp (회원 정보 조회 페이지)</summary>
<img src="https://github.com/user-attachments/assets/403a4d2f-976e-4bdb-88c9-60f91e4d0bd9" alt="유효성 검사 이미지">
<ul>
<li>회원번호 입력 창에 값이 존재하지 않을 시 입력 창으로 이동시켜 주는 함수</li>
</ul>

<img src="https://github.com/user-attachments/assets/92494179-a6f0-4e0b-a90c-d4676b8abd93" alt="유효성 검사 이미지">
<ul>
 <li>입력받은 값을 member_search_list.jsp로 전송한다</li>
</ul>
</details>
<details><summary><H2>member_search_list.jsp (회원 정보 조회 페이지)</summary>
<img src="https://github.com/user-attachments/assets/3fd53140-2713-482b-a622-1a9ba48908f6" alt="유효성 검사 이미지">

 <ul>
  <li>사용자가 조회하려는 회원 정보를 조회한다</li>
 </ul>

<img src="https://github.com/user-attachments/assets/75761a88-3143-4db9-99f7-397d0c60eea7" alt="유효성 검사 이미지">
<ul>
 <li>if문, rs.next()를 사용하여 rs.next의 값이 True일 경우 (조회한 정보가 존재할 경우) 조회한 값 출력</li> 
 <li>False일 경우 (조회한 정보가 존재하지 않을 경우) 해당 회원이 존재하지 않다고 출력</li>
</ul>
</details>
<hr>
<details><summary><H2>update.jsp (회원 정보 수정 페이지)</H2></summary>
<img src="https://github.com/user-attachments/assets/efae678c-f165-4119-a081-8cde583f0a45" alt="update.jsp 코드1">
<img src="https://github.com/user-attachments/assets/84990a2c-ec88-4dec-bf03-27798ed3560c" alt="update.jsp 코드2">
<img src="https://github.com/user-attachments/assets/c3c89d1e-ac35-4bd8-aa30-f32e466f67f4" alt="update.jsp 코드3">
<ul>
 <li>전송받은 회원번호의 정보를 조회한다</li>
 <li>조회한 정보를 입력창에 표시한 뒤, 수정을 눌렀을 경우 update_p.jsp로 이동시킨다</li>
 <li>삭제를 눌렀을 경우, 현재 회원번호를 delete.jsp로 전송 및 이동한다</li>
</ul>
</details>
<details><summary><H2>update_p.jsp (회원 정보 수정 페이지 (수정))</H2></summary>
<img src="https://github.com/user-attachments/assets/e3fbad7f-cdbc-4351-aa79-a3ddb00cdf95" alt="update_p.jsp 코드">
<ul>
 <li>update 문을 통해서 DB에 현재 회원정보를 수정한다.</li>
 <li>그 후 회원 정보 페이지로 돌아간다</li>
</ul>
 </details>
<details><summary><H2> delete.jsp (회원 정보 수정 페이지 (삭제))</H2></summary>
<img src="https://github.com/user-attachments/assets/6ec31cb6-582c-4cb9-b3e0-fb27656205aa" alt="delete.jsp 코드">
<ul>
 <li>delete 문을 통해서 전송받은 회원 정보를 DB에서 삭제한다</li>
</ul>
</details>







