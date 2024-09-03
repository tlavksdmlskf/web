# 쇼핑몰 회원관리 페이지


## 완성본

### 메인 페이지
![image](https://github.com/user-attachments/assets/5b2c830c-40aa-457c-b741-773e150033cf)
### 회원등록 페이지
![image](https://github.com/user-attachments/assets/7714577e-34e9-49c0-8eab-df8e07a6001b)
### 유효성 검사
![image](https://github.com/user-attachments/assets/e4d833c7-8a7c-438d-a441-ee8585109341)
### DB에 들어간 모습
![image](https://github.com/user-attachments/assets/253f39e7-bc82-473d-94db-04e93fa2920c)
### 회원 매출 조회
![image](https://github.com/user-attachments/assets/7c811864-d3d2-4fe8-a4ed-c6ca9cc637fb)
### 회원 정보 조회 (회원번호가 일치할 경우)
![image](https://github.com/user-attachments/assets/25396fa1-772a-41c1-b59f-700965d6fea7)
![image](https://github.com/user-attachments/assets/1f2a7ea0-2239-4f31-acbd-68e4b3cd4edd)
### (회원번호가 일치하지 않을 경우)
![image](https://github.com/user-attachments/assets/ad65994a-d82d-4bd2-a8c9-94c94f1d2b51)
![image](https://github.com/user-attachments/assets/c4ec843b-becb-49ae-903c-dff7aa9fc1cf)




# 주요코드
## index.jsp
![image](https://github.com/user-attachments/assets/ad69a05a-16bd-46cd-badb-ca77bb9f9543)
+ 전체적인 사이트 틀
+ 사이트에서 중복인 부분은 jsp:include 로 넣어준다.
---
## join.jsp
![image](https://github.com/user-attachments/assets/598db99c-1802-48b6-9896-6dcb1e96431f)   
![image](https://github.com/user-attachments/assets/66fe5e44-fb6a-4657-bb46-a7c1dc88e602)


+ 함수를 만들어서 입력창에 입력값이 없으면 입력되지 않은 창으로 이동시켜 준다.
+ 입력이 전부 되었으면 폼을 join_p.jsp로 전송한다.

![image](https://github.com/user-attachments/assets/4f856b72-8e7b-47b9-8253-50abcd6e11cd)
![image](https://github.com/user-attachments/assets/2e38ee38-e26f-473d-bf0a-2e50eebbc98e)


+ 회원가입을 하려는 사람의 회원번호를 정해주는 코드
+ DB에서 현재 존재하는 회원번호 + 1을 변수에 저장한 뒤, 회원번호 창에 출력한다.
+ 회원번호 창은 readonly로 읽을 수만 있게 만들어준다.
---
## join_p.jsp
![image](https://github.com/user-attachments/assets/f7464ebb-d363-4492-8dcd-8b9d7e15402f)

+ join.jsp에서 입력받은 값을 DB에 전달하는 코드
+ 한글로 전송하기 위해 인코딩을 UTF-8로 바꿔준다.

---
## sales_list.jsp
![image](https://github.com/user-attachments/assets/af76f90c-3345-4605-be88-679077b509e4)

+ 매출이 있는 회원 각각의 매출을 보여주는 코드
+ 총액을 구하기 위해서 변수를 선언한다


![image](https://github.com/user-attachments/assets/85ae6c50-8d8e-4655-b76b-86aa47a57718)
  
+ 회원의 정보와 매출, 총액을 출력해주는 코드
+ 아까 선언해준 변수에 매출을 더해주는 방식으로 총액을 구해준다

---
## member_search.jsp
![image](https://github.com/user-attachments/assets/403a4d2f-976e-4bdb-88c9-60f91e4d0bd9)

+ 회원번호 입력 창에 값이 존재하지 않을 시 입력 창으로 이동시켜 주는 함수
![image](https://github.com/user-attachments/assets/92494179-a6f0-4e0b-a90c-d4676b8abd93)
+ 






