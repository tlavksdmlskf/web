# 테트리스 웹 사이트 만들기

+ 테트리스 공략을 알려주는 웹 사이트를 만들어 보았습니다.

# 완성본

![image](https://github.com/user-attachments/assets/976db8c0-7767-4105-bb48-19652288cdd4)


## 주요 코드
![image](https://github.com/user-attachments/assets/d812ddb4-7698-4cdc-b466-52587d520947)


![스크린샷 2024-07-05 101742](https://github.com/user-attachments/assets/b4edd547-cc5b-472a-9014-a96d5f2a11ec)![스크린샷 2024-07-05 101758](https://github.com/user-attachments/assets/c9fda4c7-60c8-4295-b160-830663969dbf)



screen_event 클래스를 클릭하면 screen_event에 flash 에니메이션을 실행합니다. 그리고 flash가 다 실행되면 콘텐츠를 사라지게 했습니다.

그 후 1545ms(약 1.5초) 뒤에 게임기 화면으로 확대시키게 했습니다.

---


## 배운 점, 느낀 점, 부족한 점

+ 이미지 위치 등이 제 생각대로 되지 않아 많은 어려움을 겪었으며 불필요한 코드가 많고 js의 활용이 적은 것을 토대로 '실력이 많이 부족하다'는 생각이 들었습니다.
+ 코드적으로는 overflow를 활용하여 넘친 내용들을 잘라내거나 transform 등으로 확대, 깜박임 등을 구현하면서
  transform의 많은 활용도를 알게 되었습니다.
+ 창을 축소시키면 깨지기 때문에 창 크기에 따른 반응형 웹을 공부하여 보완할 예정입니다.

# 앞으로의 계획

+ 화면을 축소할 때 일어나는 문제들을 미디어 쿼리 등을 이용하여 해결할 것입니다. 그리고 로비 페이지에서
공략이 적혀있는 페이지로 넘어갈 때 보다 더 자연스럽게 만들 계획입니다.
