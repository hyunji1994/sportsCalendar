# Semi-Project - 1조

2019년 4월 23일에 작성한 1주차 회의록.

<br>

![](http://newsimg.hankookilbo.com/2019/03/09/201903091713088016_22.jpg)



# What we did

오늘 있었던 회의록 통해 확정된 부분을 정리했습니다.

주제를 분명하게 설정했고, 웹 어플리케이션에 추가할 기능과 웹 페이지를 간략하게 정리했습니다.

<br>

### 목차

- [주제](#subject)
- [웹 페이지](#web-pages)
- [기능](#features)
  - [User DB](#user-db)
  - [Search Event](#search-event)
  - [Calenar](#calendar)
  - [Other](#other)
  - [API](#api)

<br>

## Subject

### old. 축구경기 DB 조회 플랫폼

야구경기처럼 축구 경기에서 발생하는 데이터를 가져와서 가공해서 보여주는 데이터 플랫폼을 초기에 기획했으나 기획과정에서 어떤 데이터를, 어떻게 가져올지에 대해 구상하던 중 사실상 실현 불가능하다는 점을 파악하였습니다. 우리가 원했던 데이터를 import 할 수 있는 API가 시중에 존재하지 않았기 때문입니다.

bottom-up 방식으로 축구경기를 통해 우리가 가져올 수 있는 데이터가 무엇인지부터 다시 조사하였으며 이를 통해 주제를 변경했음을 알려드립니다. 

변경된 주제는 아래와 같습니다. 

<br>

### new. 직관 매칭 플랫폼

지역[서울, 부산,.. ]과 종목[축구, 야구]을 입력받아서 스포츠 경기 일정을 보여주고, 게시판에서 같이 경기장에 응원 갈 사람을 연결시켜주는 웹 어플리케이션.

<br>

## Web Pages

- Main Page
  - Login (modal pop-up)
  - Signup
- About - company
- My page - user
  - view information
    - update
    - delete account
- Calendar page
- Matching page
- bottom page
  - terms of use
  - privacy



## Features

### User DB

- 회원 가입
  - 아이디
    - 아이디 중복 확인
  - 비밀번호
    - 비밀번호 확인
  - 이름
  - 주민등록번호 뒷자리 하나까지
- 회원 정보
  - 로그인
  - 로그아웃
  - 정보 수정
  - 아이디/비밀번호 찾기
- 회원 탈퇴



### Search Event (on Main)<a name="search-event"></a>

- \* **종목** (축구/야구)
- \* **지역**
- 팀 (optional)



### Calendar (linked from Main)<a name="calendar"></a>

- 경기 정보
- 날씨 정보 (API, optional)
- 미세먼지 정보 (API, optional)



## Other

- 1:1 채팅 (Direct Message)
  오프라인에서 만날 수 있도록 연락처 공유 기능이 **반드시 필요**하나 어떻게 구축할 수 있을지 모름.



## API

- Calendar API
- Direct Message API (like Telegram)



# What we will do

- 스토리보드를 일정보다 빨리 진행하여 주제 및 계획 선정에서 어려운 추상적인 부분을 제거할 필요가 있다. 스토리보드를 만들면서 상세한 페이지와 기능 기획이 필요하다.
- UI 디자이너가 없기 때문에 우리 주제와 가장 부합하는 주제의 레퍼런스 어플리케이션 확보가 중요. 각자 레퍼런스로 삼을 웹 어플리케이션 발견시 Slack에 공유.

