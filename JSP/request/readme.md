# 코드 설명

## request01.jsp

![image](https://github.com/user-attachments/assets/11c8db57-040c-40be-93f2-724796efaa8b)

form 태그를 통해 입력받은 요소를 request01_pro.jsp로 전송하도록 지정한다.

입력은 타입이 text인 input 태그로 받는다.

입력을 다 받았을 경우, 입력받은 요소를 이전에 지정해준 request01_pro.jsp 전송해준다.


## request01_pro.jsp

![image](https://github.com/user-attachments/assets/97265dcb-0018-413c-beea-56413bf50d4e)

전송받은 값들의 인코딩 방식을 UTF-8로 지정해준다.

전송받은 값들에서 name이 id, pw인 값들의 파라미터를 각각 변수 id, pw에 할당한다.

그 후, id, pw을 출력한다
