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
<details><summary><H2>DBConnect.java (DB 연결)</H2></summary>
<img src="https://github.com/user-attachments/assets/32c26442-9e5b-4535-bfb4-4c720278ddf2" alt="유효성 검사 이미지">
<ul>
 <li>DB을 연결시켜주기 위해 필요한 코드</li>
</ul>

</details>
<hr>
<details><summary><H2>vote_member.jsp (후보조회 페이지)</H2></summary>
<img src="https://github.com/user-attachments/assets/c1138838-c9d5-4d4e-bf8c-057c2cfa9cba" alt="유효성 검사 이미지">
<img src="https://github.com/user-attachments/assets/812966ed-881e-4649-9a91-b0440244eae2" alt="유효성 검사 이미지">
<ul>
    <li>후보자의 번호, 이름, 학력, 주민번호, 지역구, 대표전화를 보여주는 페이지.</li>
    <li>학력은 case문으로 각각의 맞는 학력을 보여주고, 주민번호, 대표전화는 sub_str과 연결 연산자를 사용하여 문자를 자르고 연결하여 모든 후보가 나오도록 반복했다.</li>
</ul>
</details>


<hr>
<details><summary><H2>vote.jsp (투표 페이지)</H2></summary>
<img src="https://github.com/user-attachments/assets/6044200d-8193-44ea-8893-ec5e5c46461d" alt="유효성 검사 이미지">
<ul>
 <li>입력창에 값이 없거나 기본값인 경우, 입력값이 없다고 알려준 후, 입력되지 않은 창으로 이동한다.</li> 
</ul>
<img src="https://github.com/user-attachments/assets/b6076fe1-6861-4567-99cb-2db7b974173c" alt="유효성 검사 이미지">
<ul>
 <li>select 태그와 option 태그로 드롭다운을 만들었다.</li>
 <li>다시쓰기를 눌렀을 때, 입력창에 있는 값을 초기화되게 했다.</li>
</ul> 
</details>
<details><summary><H2>vote_p.jsp (투표 페이지)</H2></summary>
<img src="https://github.com/user-attachments/assets/ff747af1-38ed-4794-8d8f-90285dae998a" alt="유효성 검사 이미지">
<ul> 
 <li>한글로 전송하기 위해 인코딩을 UTF-8로 바꿔준다.</li>
 <li>투표 페이지에서 입력받은 값들을 데이터베이스에 저장한다.</li>
</ul> 
</details>
<hr>

<details><summary><H2>member_list.jsp (후보검수조회 페이지)</H2></summary>
<img src="https://github.com/user-attachments/assets/248a0a4b-77a7-42ad-aa56-29494557dba3" alt="유효성 검사 이미지">
<img src="https://github.com/user-attachments/assets/9c9cf1bb-740f-46bc-829a-4f6279fe33b8" alt="유효성 검사 이미지">
<ul>
 <li>투표장이 제1투표장인 성명, 생년월일, 나이, 성별, 후보번호, 투표시간, 유권자 확인을 보여주는 코드</li> 
 <li>Case문, substr, to_date, 연결 연산자를 사용했고, 후보번호는 오름차순, 투표시간은 내림차순으로 정렬하였다.</li>
</ul>

</details>
<hr>
<details><summary><H2>vote_rank.jsp (후보자 등수 페이지)</summary>
<img src="https://github.com/user-attachments/assets/c90debc6-e5bb-4269-8fc4-bae03103152f" alt="유효성 검사 이미지">
<img src="https://github.com/user-attachments/assets/a2c4e09f-62c9-4766-a7b4-4ac06863537c" alt="유효성 검사 이미지">
<ul>
 <li>후보자의 등수를 보여주는 코드</li> 
 <li>group by를 사용하여 후보 번호를 그룹으로 모은 후, count 함수를 사용하여 후보자의 총 투표 건수를 셌다.</li>
 <li>총 투표 건수가 많은 순서대로 정렬하였다.</li> 
</ul>
</details>





