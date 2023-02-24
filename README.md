![header](https://capsule-render.vercel.app/api?type=transparent&height=100&text=나의%20역할%20:%20Java,%20DB&fontColor=0055ff&fontSize=50)
<!-- 나의 역할을 바로바로 띄워서 먼저 부각시켜 보여준 후 프로젝트 소개로 넘겨라 -->
### 1. Java와 JDBC를 활용해 웹 서비스의 백엔드 기능 구현
- 회원가입 조건 부여 및 프론트엔드 제작
- 레시피 상세 페이지 구현
- 마이페이지 재료 검색 및 등록, 삭제 기능 구현
- 즐겨찾기 기능 구현

### 2. DB 설계 및 구축, 데이터 수집 및 전처리
- 테이블 설계 및 구축
- 농림축산식품 공공데이터 포털에서 데이터 수집
- 수집한 데이터를 웹페이지에 활용할 수 있도록 전처리

## 📜 프로젝트를 진행하며 얻은 것
#### 학습한 것
  - MVC 구조의 웹 페이지 제작 경험
  - 데이터 크롤링 및 자료 수집 방법에 대한 지식 습득
  - 데이터베이스 설계 및 구축과 XML을 통한 데이터베이스 연동
  - GitHub를 활용해 버전 관리 및 협업하는 방법
  - Google Drive를 활용한 서류 및 데이터 관리

#### 오류 및 어려웠던 점
  - 프로젝트를 진행하면서 기능 구현에 필요한 데이터를 가져오는 코드를 작성하지 않아 컨트롤러를 하나 더 거쳐야 하는 번거로움이 있었고, 기획과 순서의 중요성을 알게 되었다.
  - 즐겨찾기 기능을 구현할 때, 레시피를 검색해서 상세페이지로 이동하면 즐겨찾기가 활성화 되지 않는 문제가 있었으나 이를 해결하지 못하고 프로젝트를 마친게 아쉬웠다.
---

## 프로젝트 소개

- 개발 기간 : 2022년 8월 2일 ~ 2022년 9월 23일
- 개발 인원 : 5명

- 프로젝트 개발 목표 및 내용
  - 사용자가 원하는 기준(재료, 분량, 요리 시간 등)으로 검색하면 레시피를 분류 및 추천하여 맞춤 레시피 정보를 제공   
    - 로그인 없이 사용 가능한 기능   
    - 카테고리 형식으로 레시피 분류 기준을 보여주거나 상세 검색창을 구현해 기준을 입력받음   
    - 기준은 유형(한식, 양식 등), 분류(부침, 찜, 조림 등), 분량, 조리 시간, 재료, 난이도를 활용   
    - 데이터는 농림축산식품 사이트의 Open API를 활용   

  - 회원들이 냉장고에 있는 재료를 등록해서 관리할 수 있는 페이지를 제공   
    - 로그인 후 사용 가능한 기능   
    - 회원이 냉장고에 있는 재료를 입력해 리스트에 등록할 수 있음   
    - 재료를 사용하거나 버린 재료의 리스트를 수정 할 수 있음   

  - 마이페이지, 재료 관리 페이지는 회원만 사용 가능   
    - 마이페이지, 재료 관리 페이지를 사용하고 싶을 때, 계정이 없다면 회원가입을 해야하며, 회원 계정들의 분류를 위해 정보를 입력 받음   
    - 정보는 아이디,  이름, 비밀번호, 전화번호를 입력 받아 회원 가입을 진행함
    - 아이디와 비밀번호, 전화번호는 중복 입력(사용)이 불가능하게 설계   
    - 입력된 회원 정보를 바탕으로 로그인 할 수 있고, 없는 정보로는 로그인이 불가능   

- 사용한 데이터(출처 : 농림축산식품 공공데이터 포털)
  - 레시피 기본 정보
  - 레시피 과정 정보
  - 레시피 재료 정보

- 산출문서   
  - 프로젝트 기획서(브레인스토밍, 아이디어 기획서)
  - 요구사항 정의서
  - 요구사항 추적표
  - 테이블 명세서
  - 데이터베이스 요구사항 분석서
  - 화면 설계서

---

## 1. 사용 기술
- 언어   
![Java](https://img.shields.io/badge/JAVA-007396?style=for-the-badge&logo=java&logoColor=white)
![Javascript](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)
![JSP](https://img.shields.io/badge/JSP-%2300599C.svg?style=for-the-badge&logoColor=white)
![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white)

- DB   
![Oracle](https://img.shields.io/badge/oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white)

- Framworks   
![Bootstrap](https://img.shields.io/badge/bootstrap-%23563D7C.svg?style=for-the-badge&logo=bootstrap&logoColor=white)

- IDEs   
![Eclipse](https://img.shields.io/badge/Eclipse-FE7A16.svg?style=for-the-badge&logo=Eclipse&logoColor=white)

---

## 2. ER Diagram
![image](https://user-images.githubusercontent.com/89984853/198649694-9e975d06-8599-4fbc-8626-c9435d02f490.png)

---

## 3. 흐름도 및 메뉴 구성도
- 서비스 흐름도   
![image](https://user-images.githubusercontent.com/89984853/198645290-2fe5f29b-7eba-4f67-81bb-72be47fb57eb.png)   

- 메뉴 구성도   
![image](https://user-images.githubusercontent.com/89984853/198645738-cd9c4823-e3c6-4cbc-971c-c870bcc8519e.png)   

---

## 4. 프로젝트 일정
![image](https://user-images.githubusercontent.com/89984853/198654840-1af0df68-a262-4d93-82a4-ae77b238908f.png)

---

## 5. 구현 화면
### 홈(랜덤 추천 기능 - 슬라이드 배너 활용)   
![image](https://user-images.githubusercontent.com/89984853/199217082-c2264511-dbbe-472d-87b1-e2114002a903.png)
![image](https://user-images.githubusercontent.com/89984853/199217162-aa6075dd-6641-4034-b96c-47b3f3af9640.png)
![image](https://user-images.githubusercontent.com/89984853/199217215-b8e044fd-5ab5-420a-8a6d-0349684a69ab.png)   



### 로그인   
![image](https://user-images.githubusercontent.com/89984853/199217647-d7664433-374e-4d78-9fa0-326c5908abdf.png)   



### 회원가입   
![image](https://user-images.githubusercontent.com/89984853/199217612-607d4450-9658-4ccc-899e-0768f409a375.png)   



### 마이페이지   
  #### - 나의 냉장고   
  ![image](https://user-images.githubusercontent.com/89984853/199221393-281980a3-3be1-4eaa-be8f-cf97b6cdab94.png)   
  
  
  #### - 회원 정보 수정  
  ![image](https://user-images.githubusercontent.com/89984853/199222442-4be45918-6551-4994-a5c5-ee3aed911c6d.png)   

  
  #### - 회원 관리   
  ![image](https://user-images.githubusercontent.com/89984853/199862189-c60eedee-9e64-4936-8431-098d2ad6960b.png)   



### 레시피(드롭박스, 페이징 활용)   
![image](https://user-images.githubusercontent.com/89984853/199217870-5629db06-18a0-4797-9d7f-0b1af237cc29.png)
![image](https://user-images.githubusercontent.com/89984853/199217922-efc37b3d-193d-484c-95fe-77103431a547.png)
![image](https://user-images.githubusercontent.com/89984853/199217945-96cb5080-3615-460f-a760-350f0482a0a2.png)
![image](https://user-images.githubusercontent.com/89984853/199218027-86a42244-c71e-4b9a-8f30-7ab8277f6fcc.png)    



### 레시피 상세 정보(북마크 기능)
![image](https://user-images.githubusercontent.com/89984853/199219715-35947cbb-faf2-41af-94b0-900d577c10b9.png)   
![image](https://user-images.githubusercontent.com/89984853/199221106-461d98c3-0c89-4a50-9669-a379b8dc520c.png)
![image](https://user-images.githubusercontent.com/89984853/199222293-c1f43839-ec63-4b3f-9a4f-fd263f0a6f7e.png)    



### 검색 결과   
![image](https://user-images.githubusercontent.com/89984853/199219554-2c567b5e-36b3-407c-9928-bdc24d0420a9.png)      



### 공지사항   
![image](https://user-images.githubusercontent.com/89984853/199224938-41edc17e-cdd5-4ced-a130-5d9f9d29077c.png)
![image](https://user-images.githubusercontent.com/89984853/199224962-9bd01d65-4b4a-48df-bbc3-5be636088719.png)   


---

## 6. 팀원 소개
|  이름  | Github 주소 |
| :----: | :-----------: |
| 송영지 | [Github](https://github.com/icecandywell) |
| 김도연 | [Github](https://github.com/kdn00) |
| 김기범 | [Github](https://github.com/colaage23) |
| 김동현 | [Github](https://github.com/JamesKimberly) |
| 강태준 | [Github](https://github.com/xowns123)  |

---


