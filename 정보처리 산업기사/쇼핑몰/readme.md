# 쇼핑몰 회원관리 페이지


## 완성?본

### 메인 페이지
![image](https://github.com/user-attachments/assets/5b2c830c-40aa-457c-b741-773e150033cf)
### 회원등록 페이지
![image](https://github.com/user-attachments/assets/d321c947-d6d3-429e-8252-0bf444f184b6)


## 주요코드
![image](https://github.com/user-attachments/assets/ad69a05a-16bd-46cd-badb-ca77bb9f9543)
+ 전체적인 사이트 틀
+ 사이트에서 중복인 부분은 jsp:include 로 넣어준다.
---
![image](https://github.com/user-attachments/assets/598db99c-1802-48b6-9896-6dcb1e96431f)   
![image](https://github.com/user-attachments/assets/66fe5e44-fb6a-4657-bb46-a7c1dc88e602)


+ 함수를 만들어서 입력창에 입력값이 없으면 입력되지 않은 창으로 이동시켜 준다.
+ 입력이 전부 되었으면 폼을 join_p.jsp로 전송한다.


---
![image](https://github.com/user-attachments/assets/4f856b72-8e7b-47b9-8253-50abcd6e11cd)
![image](https://github.com/user-attachments/assets/2e38ee38-e26f-473d-bf0a-2e50eebbc98e)


+ 회원가입을 하려는 사람의 회원번호를 정해주는 코드
+ DB에서 현재 존재하는 회원번호 + 1을 변수에 저장한 뒤, 회원번호 창에 출력한다.
+ 회원번호 창은 readonly로 읽을 수만 있게 만들어준다.
---
![image](https://github.com/user-attachments/assets/f7464ebb-d363-4492-8dcd-8b9d7e15402f)

+ 입력받은 값을 DB에 저장하는 코드
+ 한글로 전송하기 위해 인코딩을 UTF-8로 바꿔준다.

---
