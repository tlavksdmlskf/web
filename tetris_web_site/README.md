# 테트리스 웹 사이트 만들기

+ 테트리스 공략을 알려주는 웹 사이트를 만들어 보았습니다.

  


## 주요 코드
![메인_에니메이션_코드](https://github.com/tlavksdmlskf/web/blob/main/tetris_web_site/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%202024-07-05%20090907.png)

![메인_에니메이션_CSS코드](https://github.com/tlavksdmlskf/web/blob/main/tetris_web_site/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%202024-07-05%20101742.jpg)

screen_event 클래스를 클릭하면 screen_event에 flash 에니메이션을 실행한다. 그리고 flash가 다 실행되면 콘텐츠를 사라지게 했습니다.

그 후 1545ms 뒤에 게임기 화면으로 확대시키게 했습니다.

---

![메뉴바_코드]


## 배운 점, 느낀 점

+ 이미지 위치 등이 제 생각대로 되지 않아 많은 어려움을 겪었으며 실력이 많이 부족하다는 생각이 들었습니다.
+ 코드적으로는 overflow를 활용하여 넘친 내용들을 잘라내거나 transform 등으로 확대, 깜박임 등을 구현하면서
  transform의 많은 활용도를 알게 되었습니다.
